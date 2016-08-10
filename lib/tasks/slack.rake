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
end
