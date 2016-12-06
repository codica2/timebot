module ServiceHelper
  def find_project_by_name(project_name)
    Project.where(['lower(name) = ? OR lower(alias) = ?', project_name.downcase, project_name.downcase]).first
  end

  def suitable_start_date(start_date)
    launch_date = ENV['TIMEBOT_LAUNCH_DATE'] ? Date.parse(ENV['TIMEBOT_LAUNCH_DATE']) : nil
    launch_date && launch_date > start_date ? launch_date : start_date
  end

  def parse_date(date_string)
    match_data = date_string.match(/^(\d?\d)\.(\d?\d)(?:\.(\d?\d?\d\d))?$/)
    day   = match_data[1].to_i
    month = match_data[2].to_i
    year  = match_data[3] ? match_data[3].to_i : Time.zone.today.year
    year  = year + 2000 if year < 100
    Date.new(year, month, day)
  end
end
