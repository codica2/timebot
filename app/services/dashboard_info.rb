# frozen_string_literal: true

class DashboardInfo < BaseService
  include ServiceHelper

  def initialize(filters)
    @filters = {
      date_from: filters[:filters][:date_from] || Time.zone.today.to_s,
      date_to: filters[:filters][:date_to] || Time.zone.today.to_s
    }
    @time_entries = TimeEntry.includes(:project, :user).filter(@filters)
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

  attr_reader :filters

  def date
    { start_of_week: filters[:date_from], end_of_week: filters[:date_to] }
  end

  def holidays
    { holidays: Holiday.filter(filters).pluck(:name, :date) }
  end

  def absent
    absent = Absence.includes(:user).filter(filters).group_by(&:user)
    result = absent.map do |user, absences|
      {
        user: user.name,
        children: absences.map do |abs|
          { date: abs.date, reason: abs.reason, comment: abs.comment }
        end
      }
    end
    { absent: result }
  end

  def hours
    { hours_to_work: hours_to_work, hours_worked: hours_worked }
  end

  def hours_worked
    @time_entries.map { |p| p.minutes / 60.0 }.sum.round(2)
  end

  def hours_to_work
    users = @time_entries.pluck(:user_id).uniq
    working_days = (filters[:date_from].to_date..filters[:date_to].to_date).select do |day|
      !day.saturday? && !day.sunday?
    end
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
        innerSize: '75%',
        data: hours_by_projects.compact
      }
    }
  end

  def bar_chart
    users = User.active.order(:name)
    data = @time_entries.group_by(&:project).map do |project_entries|
      {
        name: project_entries.first.name,
        data: users.map do |user|
          minutes = project_entries.last.select { |t| t.user_id == user.id }
                                   .pluck(:minutes).sum
          minutes.zero? ? 0 : (minutes / 60.0).round(2)
        end
      }
    end
    { series: data, xAxisData: users.pluck(:name) }
  end

  def hours_by_roles
    @time_entries.group_by { |t| t.user.role&.humanize || 'Other' }
                 .map do |role_entries|
      total = role_entries.last.map { |rt| rt.minutes / 60.0 }.sum.round(2)
      {
        name: role_entries.first,
        y: total,
        z: total
      }
    end
  end

  def hours_by_projects
    @time_entries.group_by(&:project).map do |project_entries|
      total = project_entries.last.map { |p| p.minutes / 60.0 }.sum.round(2)
      {
        name: project_entries.first.name,
        y: total,
        z: total
      }
    end
  end
end
