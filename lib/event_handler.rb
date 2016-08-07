class EventHandler

  attr_reader :client, :data, :user

  def initialize(client, data)
    @client = client
    @data   = data
  end

  def handle_message
    puts "Handling message: #{data.text}"
    return if data.bot_id
    @user = User.find_by(uid: data.user)
    return if user.no_conversation?
    if user.hours?
      handle_message_hours
    elsif user.details?
      handle_message_details
    end
  end

  private

  def handle_message_hours
    if data.text =~ /^\d?\d:\d\d$/
      user.add_time_entry(data.text)
      user.conversation_stage = :details
      user.save!
      send_message('Что ты сделал за сегодня?')
    else
      send_message('Введи часы в формате HH:MM.')
    end
  end

  def handle_message_details
    user.add_details_for_entry(data.text)
    user.conversation_stage = :no_conversation
    user.save!
    send_message('Так держать, старичок!')
  end

  def send_message(text)
    client.web_client.chat_postMessage(channel: user.uid, text: text, as_user: true)
  end
end