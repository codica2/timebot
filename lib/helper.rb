# frozen_string_literal: true
module Helper
  def suitable_start_date(start_date)
    launch_date = ENV['TIMEBOT_LAUNCH_DATE'] ? Date.parse(ENV['TIMEBOT_LAUNCH_DATE']) : nil
    launch_date && launch_date > start_date ? launch_date : start_date
  end

  def build_date(day, month, year)
    year = year.to_i + 2000 if year.to_i < 100
    Date.new(year.to_i, month.to_i, day.to_i)
  end
end
