class ShowWorkedHours < BaseService
  include ServiceHelper
  include Message::Conditions

  attr_accessor :user, :start_date, :end_date

  def initialize(user, date_period)
    @user = user
    @start_date, @end_date = init_dates(date_period)
    super()
  end

  def call
    begin
      @start_date = get_date(@start_date)
      @end_date   = get_date(@end_date)
    rescue
      sender.send_message(user, "Invalid date period: #{start_date} - #{end_date}")
      return
    end

    if end_date - start_date > 400
      sender.send_message(user, 'Too wide date period: ' + (@end_date - @start_date).to_i.to_s + 'days')
      return
    end

    message  = '```'
    message += "Hours worked           : #{hours_worked}\n"
    message += "Estimated hours worked : #{estimated_hours_worked}\n"
    message += "Difference             : #{difference}\n"
    message += '```'

    sender.send_message(user, message)
  end

  private

  def init_dates(date_period)
    today = Time.zone.today
    if date_period[0].match(WORKED_HOURS_MONTH)
      ["15.#{(today.day > 14 ? today : today - 1.month).strftime('%m.%Y')}",
       "14.#{(today.day > 14 ? today + 1.month : today).strftime('%m.%Y')}"]
    elsif date_period[0].match(WORKED_HOURS_PREV_MONTH)
      ["15.#{(today.day > 14 ? today - 1.month : today - 2.month).strftime('%m.%Y')}",
       "14.#{(today.day > 14 ? today : today - 1.month).strftime('%m.%Y')}"]
    else
      [date_period[1], date_period[2]]
    end
  end

  def get_date(date)
    date.split('.').count > 2 && date.split('.')[2].size == 2 ? date.sub(/(\d{2})$/) { "20#{$1}" }.to_date : "#{date}.#{Time.zone.now.year}".to_date
  end

  def hours_worked
    entries = user.time_entries.in_interval(start_date, end_date)
    total_time(entries)
  end

  def estimated_hours_worked
    working_days = (end_date >= Time.zone.today) ? (start_date...Time.zone.today) : (start_date..end_date)
    working_days = working_days.select { |day| !day.saturday? && !day.sunday? }
    holidays = Holiday.pluck(:date)
    absence = user.absences.pluck(:date)
    (working_days - holidays - absence).count * 8
  end

  def difference
    if (hours = estimated_hours_worked)
      (hours_worked - hours).round(2)
    end
  end

  def total_time(time_entries)
    (time_entries.map(&:minutes).select(&:present?).inject(&:+).to_f / 60.0).round(2)
  end

end
