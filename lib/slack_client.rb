# frozen_string_literal: true
class SlackClient
  attr_reader :client

  def initialize
    @client = Slack::Web::Client.new
  end

  def sync_users
    client.users_list.members.each(&add_member)
  end

  def add_member
    ->(member) {
      User.find_or_create_by(uid: member.id) do |user|
        user.name = member.real_name
        user.role = 'not_set'
      end
    }
  end
end
