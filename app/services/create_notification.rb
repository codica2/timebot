# frozen_string_literal: true

class CreateNotification < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text.match(Message::Conditions::NOTIFICATION_REGEXP)
    super()
  end

  def call
    return invalid_notify_at unless notify_at_is_valid?

    notification = Notification.create(message: message, notify_at: notify_at, creator: user)
    notification.users << users

    NotifierWorker.perform_at(notify_at - 10.minutes, notification.id)
    notification_created
  end

  private

  def notify_at_is_valid?
    notify_at > Time.current
  end

  def invalid_notify_at
    sender.send_message(user, 'Invalid date.')
  end

  def uids
    [user.uid, *text[1].strip.scan(/\w+/)].uniq
  end

  def notify_at
    date = parse_date(text[2])
    hours, minutes = text[3].split(':')

    tz = TZInfo::Timezone.get('Europe/Kiev')
    tz.local_to_utc(Time.zone.local(date.year, date.month, date.day, hours, minutes))
  end

  def message
    text[4]
  end

  def users
    User.where(uid: uids)
  end

  def recipients_for_slack
    uids.map { |uid| "<@#{uid}>" }.join(' ')
  end

  def notification_created
    tz = TZInfo::Timezone.get('Europe/Kiev')
    m = ":bell: You have a new notification from <@#{user.uid}>\n"
    m += ":timex: #{tz.utc_to_local(notify_at).strftime('%d.%m.%Y %H:%M')}\n"
    m += "\n"
    m += ":busts_in_silhouette: #{recipients_for_slack}\n"
    m += "\n"
    m += "*#{message}*"
    users.each do |user|
      sender.send_message(user, m)
    end
  end
end
