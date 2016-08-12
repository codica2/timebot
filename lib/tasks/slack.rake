namespace :slack do

  START_CONVERSATION_MESSAGE = "Hey mate, what did you do today?\nAnswer in the following format:" +
                               "`PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`\n For example, `fame and partners 8:00 " +
                               'some comment`'

  desc "Fetch users from slack"
  task fetch_users: :environment do
    client = Slack::Web::Client.new

    users = client.users_list

    users.members.each do |user|
      User.create(name: user.real_name, uid: user.id) unless User.find_by(uid: user.id)
    end
  end

  desc "Start conversation"
  task start_conversation: :environment do
    client = Slack::Web::Client.new

    User.find_each do |user|
      client.chat_postMessage(channel: user.uid, text: 'Hey mate, what did you do today?', as_user: true)
      user.update(is_speaking: true)
    end
  end

  desc "Dev task"
  task dev: :environment do
    client = Slack::Web::Client.new

    user = User.find_by(uid: 'U0L1X3Q4D')

    client.chat_postMessage(channel: user.uid, text: START_CONVERSATION_MESSAGE, as_user: true)
    user.update(is_speaking: true)
  end

  desc 'Canteen'
  task canteen: :environment do
    client = Slack::Web::Client.new

    users = ['U0L1X3Q4D', 'U0D8LDKL6', 'U1CLQL5JN', 'U0UP0JVAP']

    text = File::open(Rails.root.join('public', 'messages', 'canteen.txt').to_s, 'r').read

    users.each { |user| client.chat_postMessage(channel: user, text: text, as_user: true) }
  end
end

task start_bot: :environment do
  client = Slack::RealTime::Client.new

  client.on :message do |data|
    EventHandler.new(client, data).handle_message
  end

  client.on :hello do
    puts 'Successfully connected to Slack'
  end

  client.start!
end
