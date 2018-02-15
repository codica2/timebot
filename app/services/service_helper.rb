module ServiceHelper
  def find_project_by_name(project_name)
    Project.where(['lower(name) = ? OR lower(alias) = ?', project_name.downcase, project_name.downcase]).first
  end

  def find_project_by_name_like(project_name)
    Project.where('lower(name) like ? OR lower(alias) like ?', "%#{project_name.downcase}%", "%#{project_name.downcase}%")
  end

  def scan_projects_by_name(project_name)
    search_value = "%#{project_name.downcase}%"
    Project.where('lower(name) LIKE ? OR lower(alias) LIKE ?', search_value, search_value)
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

  def parse_time(time)
    match_data = time.match(/^(\d?\d):([0-5]\d)$/)
    match_data[1].to_i * 60 + match_data[2].to_i
  end

  def format_time(minutes)
    format('%2d:%02d', minutes / 60, minutes % 60)
  end
end
