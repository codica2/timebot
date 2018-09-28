class DashboardInfo < BaseService
  include ServiceHelper

  attr_reader :start_date, :end_date

  def initialize(start_date, end_date)
    @start_date = start_date || Date.today.to_s
    @end_date   = end_date || Date.today.to_s
    @time_entries = TimeEntry.in_interval(start_date, end_date)
  end

  def call
    data = {}
    data.merge!(date)
    data.merge!(hours)
    data.merge!(holidays)
    data.merge!(absent)
    data.merge!(pie_chart)
    data.merge!(bar_chart)
  end

  private

  def date
    {
      start_of_week: start_date,
      end_of_week: end_date
    }
  end

  def holidays
    { holidays: Holiday.between_dates(start_date, end_date).pluck(:name, :date) }
  end

  def absent
    absent = Absence.between_dates(start_date, end_date).group_by(&:date)
    result = absent.map do |key, value|
      {
        date: key,
        users: value.map do |abs|
          {
            name: User.find_by(id: abs.user_id).name,
            reason: abs.reason,
            comment: abs.reason
          }
        end
      }
    end
    { absent: result }
  end

  def hours
    {
      hours_to_work: hours_to_work,
      hours_worked:  hours_worked
    }
  end

  def hours_worked
    @time_entries.map { |p| p.minutes / 60.0 }.sum
  end

  def hours_to_work
    users = @time_entries.pluck(:user_id).uniq
    working_days = (start_date.to_date..end_date.to_date).select { |day| !day.saturday? && !day.sunday? }
    (working_days.count - holidays['holidays']&.count.to_i) * 8 * (users.count - absent.count)
  end

  def pie_chart
    {
      users_chart: {
        title: 'Users',
        data: hours_by_roles
      },
      projects_chart: {
        title: 'Projects',
        data: hours_by_projects.compact
      }
    }
  end

  def bar_chart
    projects = @time_entries.map(&:project).uniq
    users = User.active
    data = projects.map do |project|
      {
        name: project.name,
        type: 'bar',
        stack: 'projects',
        barWidth: '60%',
        animationDuration: 3000,
        data: users.map do |user|
          minutes = @time_entries.select { |t| t.user_id == user.id && t.project_id == project.id }
                                 .pluck(:minutes).sum
          minutes.zero? ? nil : (minutes / 60.0).round
        end
      }
    end
    {
      series: data,
      xAxisData: users.pluck(:name)
    }
  end

  def hours_by_roles
    User.roles.map do |key, value|
      total = @time_entries.joins(:user)
                           .where(users: { role: value })
                           .map { |p| p.minutes / 60.0 }.sum
      {
        name: key.humanize,
        value: total.round(2)
      }
    end
  end

  def hours_by_projects
    Project.all.map do |project|
      time_entries = project.time_entries.in_interval(start_date, end_date)
      next if time_entries.blank?

      total = time_entries.where(project_id: project.id).map { |p| p.minutes / 60.0 }.sum
      {
        name: project.name,
        value: total.round(1)
      }
    end
  end

end
