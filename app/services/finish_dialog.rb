class FinishDialog < BaseService
  attr_reader :user, :messages

  def initialize(user, messages)
    @user     = user
    @messages = messages
    super()
  end

  def call
    message = messages['thanks'].sample
    user.update(is_speaking: false)
    sender.send_message(user, message['text'], message['options'])
  end
end
