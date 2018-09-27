# frozen_string_literal: true
namespace :slack do
  desc 'Sync users with slack'
  task sync_users: :environment do
    SlackClient.new.sync_users
  end

  pid_file = Rails.root.join('tmp/pids/bot.pid')

  task start_bot: :environment do

    return puts 'Pid file exists. Maybe your app is running?' if File.exist?(pid_file)
    client = Slack::RealTime::Client.new
    messages = YAML.load_file('config/messages.yml')

    Rails.logger = ActiveSupport::Logger.new('log/bot.log')
    public_channels = client.web_client.channels_list.channels.map(&:id)
    client.on :message do |data|
      EventHandler.new(client, data, messages, public_channels).handle_message
    end

    File.write(pid_file, Process.pid)

    client.start!
  end

  task stop_bot: :environment do

    pid = File.read(pid_file)
    File.delete(pid_file) if File.exist?(pid_file)

    begin
      Process.kill('KILL', pid.to_i) if pid.present?
    rescue Errno::ESRCH => e
      puts e.inspect
    end

  end

end

task check_status: :environment do
  client = Slack::Web::Client.new

  timebot_id = client.users_list[:members].find { |user| user[:name] == 'timebot' }[:id]
  presence = client.users_getPresence(user: timebot_id)

  unless presence[:online]
    pid_file_path = Rails.root.join('tmp', 'pids', 'bot.pid').to_s

    pid = File.read(pid_file_path)

    begin
      Process.kill('KILL', pid.to_i) if pid.present?
    rescue Errno::ESRCH => e
      puts e.inspect
    end

    stream = [Rails.root.join('log', "#{Rails.env}.log").to_s, 'a']

    Dir.chdir(Rails.root)
    pid = spawn({ 'RAILS_ENV' => 'production' }, 'bundle', 'exec', 'rake', 'slack:start_bot', out: stream, err: stream)
    Process.detach(pid)

    File.write(pid_file_path, pid)
  end
end
