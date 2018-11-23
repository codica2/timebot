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
      time_entry_collection.paginate(pagination).as_json(
        only: %i[id date time details trello_labels estimated_time],
        methods: :status,
        include: %i[user project]
      )
    end

    def meta
      { total_count: time_entry_collection.count }
    end

    def time_entry_collection
      @time_entry_collection ||= TimeEntry.includes(:user, :project).filter(filters)
    end
  end
end
