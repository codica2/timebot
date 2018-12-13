# frozen_string_literal: true

module Reports
  class UserWorkedTimeService < BaseService
    def initialize(filters)
      @filters = filters[:filters] || {}
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
      TimeEntry.includes(:project, :user).filter(filters).group_by(&:user).map do |user, user_entries|
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
