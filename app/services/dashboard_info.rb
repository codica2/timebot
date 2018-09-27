class DashboardInfo < BaseService
  include ServiceHelper

  attr_reader :start_date, :end_date

  def initialize(start_date, end_date)
    @start_date = start_date || Date.today.to_s
    @end_date   = end_date || Date.today.to_s
  end

  def call
    data = {}
    data.merge!(date)
    data.merge!(hours)
    data.merge!(holidays)
    data.merge!(absent)
    data.merge!(pie_chart)
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
    absent = Absence.between_dates(start_date, end_date)
    result = absent.map do |abs|
      {
        user_name: User.find_by(id: abs.user_id).name,
        date: abs.date,
        reason: abs.reason,
        comment: abs.comment
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
    TimeEntry.in_interval(start_date, end_date).map(&:total_time).sum
  end

  def hours_to_work
    (5 - holidays['holidays']&.count.to_i) * 8 * User.active.count
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

  def hours_by_roles
    User.roles.map do |key, value|
      total = TimeEntry.in_interval(start_date, end_date)
                       .joins(:user)
                       .where(users: { role: value })
                       .map { |p| p.minutes / 60.0 }.sum
      {
        name: key.humanize,
        value: total.round(4)
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
