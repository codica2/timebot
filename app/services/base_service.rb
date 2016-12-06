class BaseService
  attr_reader :sender

  def self.call(*args)
    new(*args).call
  end

  def initialize
    @sender = Message::Sender.new
  end
end
