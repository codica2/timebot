# frozen_string_literal: true

class ShowNotifications < BaseService
  include ServiceHelper

  attr_reader :user

  def initialize(user)
    @user = user
    super()
  end

  def call
    notifications = user.notifications.where('notify_at >= ?', Time.zone.now)
    text = if notifications.empty?
      'No notifications added yet.'
    else
      notifications.map do |notification|
        recipients_for_slack = notification.users.pluck(:uid).map { |uid| "<@#{uid}>" }.join(' ')

        m = ":bell: You have notification from <@#{user.uid}>\n"
        m += ":timex: #{notification.notify_at.strftime('%d.%m.%Y %H:%M')}\n"
        m += "\n"
        m += ":busts_in_silhouette: #{recipients_for_slack}\n"
        m += "\n"
        m += "*#{notification.message}*"
      end.join("\n:heavy_minus_sign::heavy_minus_sign::heavy_minus_sign:\n")
    end
    sender.send_message(user, text)
  end

end
