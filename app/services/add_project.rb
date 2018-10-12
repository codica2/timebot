# frozen_string_literal: true

class AddProject < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text
    super()
  end

  def call
    project_name = text.match(Message::Conditions::ADD_PROJECT_REGEXP)[1]
    project = find_project_by_name(project_name)

    if project
      sender.send_message(user, "Project with name #{project.name} already exists.")
      return
    end

    if project_name.length < Project::MINIMUM_PROJECT_NAME_LENGTH
      text = "Project name is too short - must be at least #{Project::MINIMUM_PROJECT_NAME_LENGTH} characters."
      sender.send_message(user, text)
      return
    end

    project = Project.create!(name: project_name)
    sender.send_message(user, "Project with name #{project.name} is created.")
  end
end
