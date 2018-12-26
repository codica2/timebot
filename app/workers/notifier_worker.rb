class NotifierWorker
  include Sidekiq::Worker

  sidekiq_options queue: 'notifier', retry: 2

  def perform(id)
    notification = Notification.find(id)
    sender = Message::Sender.new
    recipients_for_slack = notification.users.pluck(:uid).map { |uid| "<@#{uid}>" }.join(' ')

    tz = TZInfo::Timezone.get('Europe/Kiev')
    m = ":bell: Hey don't forget about notification from <@#{notification.creator.uid}>\n"
    m += ":timex: #{tz.utc_to_local(notification.notify_at).strftime('%d.%m.%Y %H:%M')}\n"
    m += "\n"
    m += ":busts_in_silhouette: #{recipients_for_slack}\n"
    m += "\n"
    m += "*#{notification.message}*"

    notification.user_notifications.where(delivered: false).each do |user_notification|
      sender.send_message(user_notification.user, m)
      user_notification.update(delivered: true)
    end
  end
end
