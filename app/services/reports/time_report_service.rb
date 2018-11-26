# frozen_string_literal: true

module Reports
  class TimeReportService < BaseService
    def initialize(options)
      @filters = options[:filters] || {}
      @filters[:date_from] ||= Time.zone.today.beginning_of_week
      @filters[:date_to] ||= Time.zone.today
      @pagination = options[:pagination] || {}
    end

    def call
      { json: data }
    end

    private

    attr_reader :filters, :pagination

    def data
      { data: time_entries, meta: meta }
    end

    def time_entries
      entries = assign_trello_list_to(time_entry_collection)
      entries.as_json(
        only: %i[id date time details trello_labels estimated_time],
        methods: %i[status],
        include: %i[user project]
      )
    end

    def meta
      { total_count: time_entry_collection.count }
    end

    def time_entry_collection
      @time_entry_collection ||= TimeEntry.includes(:user, :project).filter(filters)
    end

    def trello_ticket_ids
      @trello_ticket_ids ||= time_entry_collection.map(&:trello_ticket_id).reject(&:blank?)
    end

    def trello_list
      @trello_list ||= ::Reports::TrelloListService.call(trello_ticket_ids)
    end

    def assign_trello_list_to(collection)
      collection.each { |te| te.status = trello_list[te.trello_ticket_id].try(:[], 'name') }
    end
  end
end
