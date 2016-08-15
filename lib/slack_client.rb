class SlackClient

  attr_reader :client

  def initialize
    @client = Slack::Web::Client.new
  end

  def sync_users
    users = client.users_list

    users.members.each do |user|
      User.create(name: user.real_name, uid: user.id) unless User.find_by(uid: user.id)
    end
  end
end