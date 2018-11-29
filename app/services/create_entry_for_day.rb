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

    handle_multiple_projects.call(projects, precise_match)
    handle_no_projects.call(projects)

    project = projects.count > 1 && project_number.present? ? projects[project_number - 1] : precise_match || projects.first

    date = parse_date(date_string)
    check_date.call(date)

    add_entry_to_db(project, details, time, date)
  end

  def handle_multiple_projects
    proc do |projects, precise_match|
      if projects.count > 1 && project_number.nil? && precise_match.nil?
        outgoing_message = 'Specify the number of project : '
        projects.each_with_index { |obj, i| outgoing_message += "\n#{i + 1} - #{obj.name}" }
        sender.send_message(user, outgoing_message)
        user.update!(last_message: text)
        return
      end
    end
  end

  def handle_no_projects
    proc do |projects|
      if projects.count.zero?
        sender.send_message(user, 'No such project.')
        ShowProjects.call(user)
        return
      end
    end
  end

  def add_entry_to_db(project, details, time, date)
    user.time_entries.create!(project_id: project.id, time: time, details: details, date: date)

    message = "Set timesheet for #{date.strftime('%b %-d, %Y')} for #{project.name}: #{time}."
    message += "\nDetails: #{details || 'none'}." if details

    sender.send_message(user, message)
  end

  def check_date
    proc do |date|
      if date > Time.zone.today
        sender.send_message(user, 'Please enter a valid date.')
        return
      end
    end
  end
end
