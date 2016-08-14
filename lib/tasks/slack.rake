namespace :slack do

  desc "Fetch users from slack"
  task fetch_users: :environment do
    client = Slack::Web::Client.new

    users = client.users_list

    users.members.each do |user|
      User.create(name: user.real_name, uid: user.id) unless User.find_by(uid: user.id)
    end
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
