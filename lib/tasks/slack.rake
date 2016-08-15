namespace :slack do

  desc 'Sync users with slack'
  task sync_users: :environment do
    SlackClient.new.sync_users
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
