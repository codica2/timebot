module Helper

  def suitable_start_date(start_date)
    launch_date = ENV['TIMEBOT_LAUNCH_DATE'] ? Date.parse(ENV['TIMEBOT_LAUNCH_DATE']) : nil
    launch_date && launch_date > start_date ? launch_date : start_date
  end
end