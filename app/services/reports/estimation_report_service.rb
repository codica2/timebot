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
      entities_grouped_by_ticket.reduce([]) do |acum, (ticket, entries)|
        acum << {
          projects: entries.map { |t| { id: t.project.id, name: t.project.name } }.uniq,
          details: ticket,
          created_at: entries.last.created_at.strftime('%d %b, %Y at %H:%M'),
          trello_labels: formatted_labels(entries.last.trello_labels)[:labels],
          estimate: formatted_labels(entries.last.trello_labels)[:estimate],
          status: entries.last.trello_list_name,
          total_time: (entries.pluck(:minutes).sum / 60.0).round(1),
          collaborators: entries.map { |t| { id: t.user.id, name: t.user.name } }.uniq
        }
      end
    end

    def entities_grouped_by_ticket
      time_entries.paginate(pagination)
                  .group_by { |t| t.ticket || t.details&.downcase }
                  .each { |_k, v| v.sort! { |a, b| a.created_at <=> b.created_at } }
    end

    def meta
      { total_count: time_entries.count }
    end

    def time_entries
      @collection ||= TimeEntry.includes(:project, :user).filter(filters)
    end

    def filtering_params
      params.permit(:date_from, :with_ticket, :date_to, by_projects: [], by_users: [])
    end
  end
end
