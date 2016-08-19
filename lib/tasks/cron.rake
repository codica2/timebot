require Rails.root.join('lib', 'message', 'logger.rb').to_s
include Message::Logger

namespace :cron do

  START_CONVERSATION_MESSAGE = "Hey mate, what did you do today?\nAnswer in the following format:" +
                               "`PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`\n For example, `fame and partners 8:00 " +
                               'some comment`'

  desc 'Start conversation'
  task ask: :environment do
    client = Slack::Web::Client.new

    User.find_each do |user|
      next if user.time_entries.where(date: Date.today).present?
      send_message(client, user, 'Hey mate, what did you do today?')
      user.update(is_speaking: true)
    end
  end

  desc 'Canteen'
  task canteen: :environment do
    client = Slack::Web::Client.new

    users = User.where(uid: ['U0D8LDKL6', 'U1CLQL5JN', 'U0UP0JVAP', 'U0D8LCBD4'])

    text = File::open(Rails.root.join('public', 'messages', 'canteen.txt').to_s, 'r').read

    users.each { |user| send_message(client, user, text) }
  end

  desc 'Remind of setting timesheet'
  task remind: :environment do
    client = Slack::Web::Client.new

    text = "Hey mate! Please don't forget to fill in the timesheet!"

    User.find_each do |user|
      send_message(client, user, text) if user.is_speaking
    end
  end

  desc 'Set is_speaking to false on all users'
  task reset_is_speaking: :environment do
    User.find_each { |user| user.update(is_speaking: false) }
  end

  desc 'Reminds to fill timesheet for blank days'
  task remind_about_blank_entries: :environment do
    client = Slack::Web::Client.new

    dates = (Date.new(Date.today.year, Date.today.month, 1)...Date.today).to_a

    User.find_each do |user|
      user_dates = dates.select { |date| user.time_entries.where(date: date).empty? && date.cwday >= 1 && date.cwday < 6 }
      if user_dates
        text = "Hi mate! Please fill in timesheet for #{user_dates.map { |date| date.strftime('*%d.%m.%y (%A)*') }.join(', ')}."
        send_message(client, user, text)
      end
    end
  end

  desc 'Interesting fact'
  task fact: :environment do
    client = Slack::Web::Client.new

    text = File.open(Rails.root.join('public', 'messages', 'fact.txt').to_s, 'r').read

    send_message(client, 'C02L077LZ', text)
  end
end

def send_message(client, user, message)
  addressee = user.is_a?(User) ? user.uid : user
  client.chat_postMessage(channel: addressee, text: message, as_user: true)
  log_outgoing_message(user, message)
end