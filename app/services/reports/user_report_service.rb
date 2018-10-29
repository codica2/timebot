# frozen_string_literal: true

module Reports
  class UserReportService < BaseService
    def initialize(filters)
      @filters = filters[:filters] || {}
      @start_date = @filters[:date_from]&.to_date || Time.zone.today.beginning_of_week
      @end_date   = @filters[:date_to]&.to_date || Time.zone.today
    end

    def call
      { json: data }
    end

    private

    attr_reader :filters

    def data
      { data: user_hours }
    end

    def user_hours
      users = User.active.map do |user|
        worked = hours_worked(user)
        to_work = hours_to_work(user)
        {
          name:          user.name,
          hours_worked:  worked,
          hours_to_work: to_work,
          difference:    worked - to_work
        }
      end

      users.sort { |a, b| b[:hours_worked] <=> a[:hours_worked] }
    end

    def hours_worked(user)
      entries = user.time_entries.in_interval(@start_date, @end_date)
      (entries.map(&:minutes).select(&:present?).inject(&:+).to_f / 60.0).round(2)
    end

    def hours_to_work(user)
      working_days = @end_date >= Time.zone.today ? (@start_date..Time.zone.today) : (@start_date..@end_date)
      working_days = working_days.select { |day| !day.saturday? && !day.sunday? }
      holidays = Holiday.pluck(:date)
      absence = user.absences.pluck(:date)
      (working_days - holidays - absence).count * 8
    end
  end
end
