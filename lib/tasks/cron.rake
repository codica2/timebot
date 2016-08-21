require Rails.root.join('lib', 'helper').to_s

include Helper

namespace :cron do

  START_CONVERSATION_MESSAGE = "Hey mate, what did you do today?\nAnswer in the following format:" +
                               "`PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`\n For example, `fame and partners 8:00 " +
                               'some comment`'

  desc 'Start conversation'
  task ask: :environment do
    sender = Message::Sender.new

    User.find_each do |user|
      next if user.time_entries.where(date: Date.today).present?
      sender.send_message(user, 'Hey mate, what did you do today?')
      user.update(is_speaking: true)
    end
  end

  desc 'Canteen'
  task canteen: :environment do
    sender = Message::Sender.new

    users = User.where(uid: ['U0D8LDKL6', 'U1CLQL5JN', 'U0UP0JVAP', 'U0D8LCBD4'])

    text = File::open(Rails.root.join('public', 'messages', 'canteen.txt').to_s, 'r').read

    users.each { |user| sender.send_message(user, text) }
  end

  desc 'Remind of setting timesheet'
  task remind: :environment do
    sender = Message::Sender.new

    text = "Hey mate! Please don't forget to fill in the timesheet!"

    User.find_each do |user|
      sender.send_message(user, text) if user.is_speaking
    end
  end

  desc 'Set is_speaking to false on all users'
  task reset_is_speaking: :environment do
    User.find_each { |user| user.update(is_speaking: false) }
  end

  desc 'Reminds to fill timesheet for blank days'
  task remind_about_blank_entries: :environment do
    sender = Message::Sender.new

    start_date = suitable_start_date(Date.new(Date.today.year, Date.today.month, 1))

    dates = (start_date...Date.today).to_a

    User.find_each do |user|
      user_dates = dates.select { |date| user.time_entries.where(date: date).empty? && date.cwday >= 1 && date.cwday < 6 }
      if user_dates.present?
        text = "Hi mate! Please fill in timesheet for #{user_dates.map { |date| date.strftime('*%d.%m.%y (%A)*') }.join(', ')}."
        sender.send_message(user, text)
      end
    end
  end

  desc 'Interesting fact'
  task fact: :environment do
    sender = Message::Sender.new

    text = File.open(Rails.root.join('public', 'messages', 'fact.txt').to_s, 'r').read

    sender.send_message('C02L077LZ', text)
  end
end