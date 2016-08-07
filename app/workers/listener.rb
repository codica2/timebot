class Listener
  @queue = :listener

  def self.perform
    client = Slack::RealTime::Client.new

    client.on :message do |data|
      EventHandler.new(client, data).handle_message
    end

    client.on :hello do
      puts 'Successfully connected to Slack'
    end

    client.start!
  end
end