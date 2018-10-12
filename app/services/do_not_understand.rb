# frozen_string_literal: true

class DoNotUnderstand < BaseService
  attr_reader :user, :messages

  def initialize(user, messages)
    @user     = user
    @messages = messages
    super()
  end

  def call
    message = messages['understand'].sample
    sender.send_message(user, message['text'], message['options'])
  end
end
