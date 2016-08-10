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

    User.find_each do |user|
      client.chat_postMessage(channel: user.uid, text: 'Hey mate, what did you do today?', as_user: true)
      user.update(is_speaking: true)
    end
  end

  desc "Dev task"
  task dev: :environment do
    %x(rake db:schema:load)
    %x(rake slack:fetch_users)
    %x(rake slack:start_conversation)
  end
end
