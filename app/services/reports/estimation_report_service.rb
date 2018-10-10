# frozen_string_literal: true

module Reports
  class EstimationReportService < BaseService
    include ActiveAdmin::DashboardHelper

    def initialize(options)
      @filters = options[:filters] || {}
      @pagination = options[:pagination] || {}
    end

    def call
      { json: data }
    end

    private

    attr_reader :filters, :pagination

    def data
      { data: entities, meta: meta }
    end

    def entities
      TimeEntry.includes(:project).filter(filters).paginate(pagination).map do |time_entry|
        {
          id: time_entry.id,
          project: time_entry.project.name,
          details: time_entry.details,
          created_at: time_entry.created_at,
          trello_labels: formatted_labels(time_entry.trello_labels)[:labels],
          estimate: formatted_labels(time_entry.trello_labels)[:estimate],
          status: time_entry.trello_list_name,
          total_time: time_entry.total_time,
          collaborators: collaborators(time_entry)
        }
      end
    end

    def meta
      { total_count: TimeEntry.count }
    end

    def collaborators(time_entry)
      time_entry.collaborators.map { |c| { id: c.id, name: c.name } }
    end

    def filtering_params
      params.permit(:date_from, :with_ticket, :date_to, by_projects: [], by_users: [])
    end
  end
end
