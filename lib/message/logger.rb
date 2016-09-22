# frozen_string_literal: true
module Message
  module Logger
    def log_incoming_message(user, message)
      return unless user && message
      Rails.logger.info "#{Time.zone.now.strftime('%H:%M:%S %d.%m.%Y')} - Receive message from #{user.name}: " \
                  "#{remove_new_lines(message)}"
    end

    def log_outgoing_message(user, message)
      return unless user && message
      Rails.logger.info "#{Time.zone.now.strftime('%H:%M:%S %d.%m.%Y')} - Send message to " \
                  "#{user.is_a?(User) ? user.name : user}: #{remove_new_lines(message)}"
    end

    private

    def remove_new_lines(message)
      message.gsub(/\n/, '\n')
    end
  end
end
