namespace :slack do

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

    user = User.find_by(uid: 'U0L1X3Q4D')

    client.chat_postMessage(channel: user.uid, text: 'Йоу старичок, сколько ты сегодня поработал?', as_user: true)
  end
end
