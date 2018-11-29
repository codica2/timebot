# frozen_string_literal: true
class SlackClient
  attr_reader :client

  def initialize
    @client = Slack::Web::Client.new
  end

  def sync_users
    users = client.users_list
    users.members.each do |member|
      User.find_or_create_by(uid: member.id) { |user| user.name = member.real_name }
    end
  end
end
