module Helper

  def suitable_start_date(start_date)
    launch_date = ENV['TIMEBOT_LAUNCH_DATE'] ? Date.parse(ENV['TIMEBOT_LAUNCH_DATE']) : nil
    launch_date && launch_date > start_date ? launch_date : start_date
  end

  def build_date(day, month, year)
    year = year.to_i + 2000 if year.to_i < 100
    Date.new(year.to_i, month.to_i, day.to_i)
  end

  def start_of_week(date = Date.today)
    date - (date.cwday - 1)
  end

  def last_week
    end_of_week = Date.today - Date.today.cwday
    [start_of_week(end_of_week), end_of_week]
  end

  def start_of_month(date = Date.today)
    date - (date.day - 1)
  end

  def last_month
    end_of_month = Date.today - Date.today.day
    [start_of_month(end_of_month), end_of_month]
  end
end