# frozen_string_literal: true
class EventHandler
  include Message::Conditions
  include Message::Logger

  attr_reader :client, :data, :sender, :messages, :public_channels

  def initialize(client, data, messages, public_channels)
    @client          = client
    @data            = data
    @public_channels = public_channels
    @sender          = Message::Sender.new
    @messages        = messages
  end

  def handle_message
    return if message_is_not_processable
    user = User.find_by(uid: data.user)
    log_incoming_message(user, data.text)
    if message_is_enter_time
      CreateEntry.call(user, data.text, messages)
    elsif message_is_specify_project
      SpecifyProject.call(user, data.text, messages)
    elsif message_is_request_for_help
      ShowHelp.call(user)
    elsif message_is_remove_entry
      RemoveEntry.call(user, data.text)
    elsif message_is_show_reports
      ShowReport.call(user, data.text)
    elsif message_is_enter_time_for_day
      CreateEntryForDay.call(user, data.text)
    elsif message_is_request_for_project
      ShowProjects.call(user)
    elsif message_is_edit_entry
      EditEntry.call(user, data.text)
    elsif message_is_worked_hours
      match_data = data.text.match(WORKED_HOURS_MONTH) || data.text.match(WORKED_HOURS_PREV_MONTH) || data.text.match(WORKED_HOURS)
      ShowWorkedHours.call(user, match_data)
    elsif message_is_add_project
      AddProject.call(user, data.text)
    elsif message_is_over(user)
      FinishDialog.call(user, messages)
    elsif message_is_set_absence
      SetAbsence.call(user, data.text)
    elsif message_is_find_project
      FindProject.call(user, data.text)
    elsif message_is_absence_days
      AbsenceDays.call(user, data.text)
    else
      DoNotUnderstand.call(user, messages)
    end
  end
end
