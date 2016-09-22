# frozen_string_literal: true
module Message
  class Sender
    include Message::Logger

    attr_reader :client

    def initialize
      @client = Slack::Web::Client.new
    end

    def send_message(user, message, options = {})
      options[:channel] = user.is_a?(User) ? user.uid : user
      options[:text]    = message
      options[:as_user] = true
      client.chat_postMessage(options)
      log_outgoing_message(user, message)
    end
  end
end
