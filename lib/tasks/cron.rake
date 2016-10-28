# frozen_string_literal: true
require Rails.root.join('lib', 'helper').to_s

include Helper

namespace :cron do
  START_CONVERSATION_MESSAGE = "Hey mate, what did you do today?\nAnswer in the following format:" \
                               "`PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`\n For example, `fame and partners 8:00" \
                               ' some comment`'

  desc 'Start conversation'
  task ask: :environment do
    next if Holiday.is_holiday?
    sender = Message::Sender.new

    User.active.each do |user|
      next if user.time_entries.where(date: Time.zone.today).present? || user.is_absent?(Time.zone.today)
      sender.send_message(user, 'Hey mate, what did you do today?')
      user.update(is_speaking: true)
    end
  end

  desc 'Canteen'
  task canteen: :environment do
    next if Holiday.is_holiday?
    sender = Message::Sender.new

    users = User.where(uid: %w(U0D8LDKL6 U1CLQL5JN U0UP0JVAP))

    text = File.open(Rails.root.join('public', 'messages', 'canteen.txt').to_s, 'r').read

    users.each do |user|
      next if user.is_absent?(Time.zone.today)
      sender.send_message(user, text)
    end
  end

  desc 'Remind of setting timesheet'
  task remind: :environment do
    next if Holiday.is_holiday?
    sender = Message::Sender.new

    text = "Hey mate! Please don't forget to fill in the timesheet!"

    User.active.each do |user|
      sender.send_message(user, text) if user.is_speaking
    end
  end

  desc 'Set is_speaking to false on all users'
  task reset_is_speaking: :environment do
    User.active.each { |user| user.update(is_speaking: false) }
  end

  desc 'Reminds to fill timesheet for blank days'
  task remind_about_blank_entries: :environment do
    next if Holiday.is_holiday?
    sender = Message::Sender.new
    start_date = suitable_start_date(Time.zone.now.beginning_of_month.to_date)

    work_days = (start_date...Time.zone.today).select { |date| !date.saturday? && !date.sunday? } - Holiday.pluck(:date)

    User.active.each do |user|
      user_work_days = work_days - user.absences.pluck(:date)

      next unless user_work_days.present?
      text = 'Hi mate! Please fill in timesheet for ' \
             "#{user_work_days.map { |date| date.strftime('*%d.%m.%y (%A)*') }.join(', ')}."
      sender.send_message(user, text)
    end
  end

  desc 'Interesting fact'
  task fact: :environment do
    sender = Message::Sender.new

    text = File.open(Rails.root.join('public', 'messages', 'fact.txt').to_s, 'r').read

    sender.send_message('C02L077LZ', text)
  end
end
