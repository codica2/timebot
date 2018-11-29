# frozen_string_literal: true

class StartConversation < BaseService
  attr_reader :user, :messages

  def initialize(user, messages)
    @user     = user
    @messages = messages
    super()
  end

  def call
    message = messages['today'].sample
    sender.send_message(user, message['text'], message['options'])
    user.update(is_speaking: true)
  end
end
