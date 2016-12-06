class ShowHelp < BaseService
  attr_reader :user

  def initialize(user)
    @user = user
    super()
  end

  def call
    message = File.open(Rails.root.join('public', 'messages', 'help.txt').to_s, 'r').read
    sender.send_message(user, message)
  end
end
