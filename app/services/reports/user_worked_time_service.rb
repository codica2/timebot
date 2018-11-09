# frozen_string_literal: true

module Reports
  class UserWorkedTimeService < BaseService
    def initialize(filters)
      @filters = filters[:filters] || {}
      @start_date = @filters[:date_from]&.to_date || Time.zone.today.beginning_of_week
      @end_date   = @filters[:date_to]&.to_date || Time.zone.today.end_of_week
    end

    def call
      { json: data }
    end

    private

    attr_reader :filters

    def data
      { data: users }
    end

    def users
      TimeEntry.in_interval(@start_date, @end_date).includes(:project, :user).filter(filters).group_by(&:user).map do |user, user_entries|
        {
          id: user.id,
          name: user.name,
          total_time_spent: (user_entries.pluck(:minutes).inject(:+).to_f / 60.0).round(2),
          projects: projects(user_entries)
        }
      end
    end

    def projects(user_entries)
      user_entries.group_by(&:project).map do |project, project_entries|
        {
          id: project.id,
          name: project.name,
          time_spent: (project_entries.pluck(:minutes).inject(:+).to_f / 60.0).round(2)
        }
      end
    end
  end
end
