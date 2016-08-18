namespace :cron do

  START_CONVERSATION_MESSAGE = "Hey mate, what did you do today?\nAnswer in the following format:" +
                               "`PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`\n For example, `fame and partners 8:00 " +
                               'some comment`'

  desc 'Start conversation'
  task ask: :environment do
    client = Slack::Web::Client.new

    User.find_each do |user|
      next if user.time_entries.where(date: Date.today).present?
      client.chat_postMessage(channel: user.uid, text: 'Hey mate, what did you do today?', as_user: true)
      log("Send message to #{user.name} with text: \"#{'Hey mate, what did you do today?'}\"")
      user.update(is_speaking: true)
    end
  end

  desc 'Canteen'
  task canteen: :environment do
    client = Slack::Web::Client.new

    users = ['U0D8LDKL6', 'U1CLQL5JN', 'U0UP0JVAP', 'U0D8LCBD4']

    text = File::open(Rails.root.join('public', 'messages', 'canteen.txt').to_s, 'r').read

    users.each do |user|
      client.chat_postMessage(channel: user, text: text, as_user: true)
      log("Invite user with id #{user} to canteen.")
    end
  end

  desc 'Remind of setting timesheet'
  task remind: :environment do
    client = Slack::Web::Client.new

    text = "Hey mate! Please don't forget to fill in the timesheet!"

    User.find_each do |user|
      if user.is_speaking
        client.chat_postMessage(channel: user.uid, text: text, as_user: true)
        log("Send message to #{user.name} with text: \"#{text}\"")
      end
    end
  end

  desc 'Set is_speaking to false on all users'
  task reset_is_speaking: :environment do
    User.find_each do |user|
      user.update(is_speaking: false)
      log("Reset is_speaking for #{user.name}")
    end
  end

  desc 'Reminds to fill timesheet for blank days'
  task remind_about_blank_entries: :environment do
    client = Slack::Web::Client.new

    dates = (Date.new(Date.today.year, Date.today.month, 1)...Date.today).to_a

    User.find_each do |user|
      user_dates = dates.select { |date| user.time_entries.where(date: date).empty? && date.cwday >= 1 && date.cwday < 6 }
      if user_dates
        text = "Hi mate! Please fill in timesheet for #{user_dates.map { |date| date.strftime('*%d.%m.%y (%A)*') }.join(', ')}."
        client.chat_postMessage(channel: user.uid, text: text, as_user: true)
        log("Send message to #{user.name} with text: \"#{text}\"")
      end
    end
  end

  desc 'Interesting fact'
  task fact: :environment do
    client = Slack::Web::Client.new

    text = File.open(Rails.root.join('public', 'messages', 'fact.txt').to_s, 'r').read

    client.chat_postMessage(channel: 'C02L077LZ', text: text, as_user: true)
    log(text)
  end
end

def log(message)
  puts "#{Time.now.strftime('%H:%M:%S %d.%m.%Y')} - #{message ? message.gsub(/\n/, '\n') : ''}"
end
