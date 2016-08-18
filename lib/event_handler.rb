class EventHandler

  include Message::Conditions
  include Message::Handlers

  attr_reader :client, :data, :user

  def initialize(client, data)
    @client = client
    @data   = data
  end

  def handle_message
    return if data.bot_id || data.message || data.previous_message || data.channel == ENV['SLACK_RANDOM_CHANNEL']
    log_message
    @user = User.find_by(uid: data.user)

    if message_is_request_for_project
      handle_message_show_projects
    elsif message_is_request_for_help
      handle_message_show_help
    elsif message_is_show_week
      handle_show_week
    elsif message_is_show_month
      handle_show_month
    elsif message_is_enter_time_for_day
      handle_message_time_for_other_day
    elsif message_is_add_project
      handle_add_project
    elsif message_is_over
      handle_message_over
    elsif user.is_speaking
      handle_timesheet_entry
    else
      handle_unknown_message
    end
  rescue => e
    puts e
    puts e.backtrace.join("\n\t")
    send_message('Sorry. An error occurred.')
  end

  private

  def send_message(text)
    client.web_client.chat_postMessage(channel: user.uid, text: text, as_user: true)
    puts "#{Time.now.strftime('%H:%M:%S %d.%m.%Y')} - Send message: #{text.gsub(/\n/, '\n')}"
  end

  def log_message
    puts "#{Time.now.strftime('%H:%M:%S %d.%m.%Y')} - Receive message: #{data.text.gsub(/\n/, '\n')}"
  end
end