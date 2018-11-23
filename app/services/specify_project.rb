# frozen_string_literal: true

class SpecifyProject < BaseService
  include ServiceHelper

  attr_reader :user, :text, :messages

  def initialize(user, text, messages)
    @user     = user
    @text     = text
    @messages = messages
    super()
  end

  def call
    match_data = text.match(Message::Conditions::SPECIFY_PROJECT)[0].to_i

    if match_data < 1 || (last_msg = user.last_message).nil?
      DoNotUnderstand.call(user, messages)
    elsif last_msg.match?(Message::Conditions::ENTER_TIME_REGEXP)
      CreateEntry.call(user, last_msg, messages, match_data)
    elsif last_msg.match?(Message::Conditions::ENTER_TIME_FOR_DAY_REGEXP)
      CreateEntryForDay.call(user, last_msg, match_data)
    else
      DoNotUnderstand.call(user, messages)
    end
  end
end
