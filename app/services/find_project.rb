# frozen_string_literal: true

class FindProject < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text
    super()
  end

  def call
    project_name = text.match(Message::Conditions::FIND_PROJECT_REGEXP)[1]
    projects = scan_projects_by_name(project_name)

    if projects.blank?
      sender.send_message(user, "Projects with name `#{project_name}` not found.")
      return
    end

    answer = '```'
    answer += "Search results: \n"
    projects.map do |project|
      answer += "#{project.name.ljust(20)}"
      answer += "Alias: #{project.alias if project.alias.present?}"
      answer += "\n"
    end
    answer += '```'

    sender.send_message(user, answer)
  end
end
