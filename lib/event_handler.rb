# frozen_string_literal: true
class EventHandler
  include Message::Conditions
  include Message::Logger

  attr_reader :client, :data, :sender, :messages, :public_channels

  def initialize(client, data, messages)
    @client          = client
    @data            = data
    @public_channels = fetch_public_channels
    @sender          = Message::Sender.new
    @messages        = messages
  end

  def handle_message
    return if message_is_not_processable

    user = User.find_by(uid: data.user)
    log_incoming_message(user, data.text)

    if message_is_request_for_project
      ShowProjects.call(user)
    elsif message_is_request_for_help
      ShowHelp.call(user)
    elsif message_is_show_reports
      ShowReport.call(user, data.text)
    elsif message_is_set_absence
      SetAbsence.call(user, data.text)
    elsif message_is_enter_time_for_day
      CreateEntryForDay.call(user, data.text)
    elsif message_is_add_project
      AddProject.call(user, data.text)
    elsif message_is_over(user)
      FinishDialog.call(user, messages)
    elsif message_is_remove_entry
      RemoveEntry.call(user, data.text.match(REMOVE_ENTRY_REGEXP)[:id].to_i)
    elsif message_is_edit_entry
      EditEntry.call(user, data.text)
    elsif message_is_enter_time
      CreateEntry.call(user, data.text, messages)
    elsif message_is_find_project
      FindProject.call(user, data.text)
    else
      DoNotUnderstand.call(user, messages)
    end
  rescue => e
    Rails.logger.error(e)
    Rails.logger.error(e.backtrace.join("\n\t"))
    sender.send_message(user, 'Sorry. An error occurred.')
  end

  private

  def fetch_public_channels
    @public_channels = client.web_client.channels_list.channels.map(&:id)
  end
end
