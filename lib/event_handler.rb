# frozen_string_literal: true
class EventHandler
  include Message::Conditions
  include Message::Handlers
  include Message::Logger
  include Helper

  attr_reader :client, :data, :user, :sender

  def initialize(client, data)
    @client          = client
    @data            = data
    @public_channels = fetch_public_channels
    @sender          = Message::Sender.new
  end

  def handle_message
    return if message_is_not_processable
    @user = User.find_by(uid: data.user)
    log_incoming_message(@user, data.text)

    if message_is_request_for_project
      handle_message_show_projects
    elsif message_is_request_for_help
      handle_message_show_help
    elsif message_is_show_reports
      handle_reports
    elsif message_is_set_absence
      handle_set_absence
    elsif message_is_enter_time_for_day
      handle_message_time_for_other_day
    elsif message_is_add_project
      handle_add_project
    elsif message_is_over
      handle_message_over
    elsif user.is_speaking
      handle_timesheet_entry
    elsif message_is_ask_me
      handle_ask_me
    else
      handle_unknown_message
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
