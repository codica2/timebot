# frozen_string_literal: true

class CreateEntryForDay < BaseService
  include ServiceHelper

  attr_reader :user, :text, :project_number

  def initialize(user, text, project_number = nil)
    @user = user
    @text = text
    @project_number = project_number
    super()
  end

  def call
    match_data = text.match Message::Conditions::ENTER_TIME_FOR_DAY_REGEXP

    date_string  = match_data[1]
    project_name = match_data[2]
    time         = match_data[3]
    details      = match_data[4]

    projects = find_project_by_name_like(project_name)
    precise_match = find_project_by_name(project_name)
    
    if projects.count > 1 && project_number.nil? && precise_match.nil?
      message = 'Specify the number of project : '
      projects.each_with_index { |obj, i| message += "\n#{i + 1} - #{obj.name}" }
      sender.send_message(user, message)
      user.update!(last_message: text)
      return
    end

    if projects.count == 0
      sender.send_message(user, 'No such project.')
      ShowProjects.call(user)
      return
    end

    project = projects.count > 1 && project_number.present? ? projects[project_number - 1] : precise_match || projects.first

    date = parse_date(date_string)

    if date > Time.zone.today
      sender.send_message(user, 'Please enter a valid date.')
      return
    end

    minutes = parse_time(time)

    user.time_entries.create!(project_id: project.id,
                              time:       format_time(minutes),
                              minutes:    minutes,
                              details:    details,
                              date:       date)

    message = "Set timesheet for #{date.strftime('%b %-d, %Y')} for #{project.name}: #{time}."
    message += "\nDetails: #{details || 'none'}." if details

    sender.send_message(user, message)
  end
end
