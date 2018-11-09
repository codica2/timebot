# frozen_string_literal: true

module Reports
  class UserAbsenceService < BaseService
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
      Absence.between_dates(@start_date, @end_date)
             .select(sql_for_select)
             .joins(:user)
             .filter(filters)
             .group('users.id')
    end

    def sql_for_select
      <<~SQL
        users.id,
        users.name,
        COUNT(CASE absences.reason WHEN 0 THEN 1 END) AS vacation,
        COUNT(CASE absences.reason WHEN 1 THEN 1 END) AS illness,
        COUNT(CASE absences.reason WHEN 2 THEN 1 END) AS other
      SQL
    end
  end
end
