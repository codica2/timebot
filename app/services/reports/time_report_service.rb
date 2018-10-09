# frozen_string_literal: true

module Reports
  class TimeReportService < BaseService
    def initialize(filters: filtering_params = {})
      @filters = filters
    end

    def call
      { json: data }
    end

    private

    attr_reader :filters

    def data
      { data: team_entities }
    end

    def team_entities
      Team.includes(:projects).map do |team|
        {
          id: team.id,
          name: team.name,
          projects: projects(team)
        }
      end
    end

    def projects(team)
      team_project_time_entries(team.id).map do |project_time_entry|
        {
          id: project_time_entry.first.id,
          name: project_time_entry.first.name,
          time: time_worked(project_time_entry),
          time_entries: time_entries(project_time_entry)
        }
      end
    end

    def time_entries(entries)
      entries.last.group_by(&:details).reduce([]) do |acum, entry|
        acum << {
          id: entries.first.id,
          details: entry.first,
          collaborators: user_names(entry),
          total_time: time_worked(entry),
          trello_labels: entry.flatten.last.trello_list_name
        }
      end
    end

    def team_project_time_entries(team_id)
      TimeEntry.includes(:user, :project).joins(:team)
        .where(teams: { id: team_id })
        .filter(filters)
        .limit(150)
        .group_by(&:project)
        .sort { |a, b| time_worked(b) <=> time_worked(a) }
    end

    def time_worked(entry)
      (entry.last.map(&:minutes).sum / 60.0).round(1)
    end

    def user_names(entry)
      entry.last.map(&:user).map(&:name).uniq.to_sentence
    end

  end
end
