class CreateEntryForDay < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text
    super()
  end

  def call
    match_data = text.match Message::Conditions::ENTER_TIME_FOR_DAY_REGEXP

    date_string  = match_data[1]
    project_name = match_data[2]
    time         = match_data[3]
    details      = match_data[4]

    project = find_project_by_name(project_name)

    unless project
      sender.send_message(user, 'No such project.')
      ShowProjects.call(user)
      return
    end

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

    message = "Set timesheet for #{date.strftime('%-d.%-m.%Y')} for #{project.name}: #{time}."
    message += " Details: #{details || 'none'}." if details

    sender.send_message(user, message)
  end
end
