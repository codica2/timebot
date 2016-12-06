class ShowProjects < BaseService
  attr_reader :user

  def initialize(user)
    @user = user
    super()
  end

  def call
    projects = Project.order(:id)
    text = if projects.empty?
             'No projects added yet.'
           else
             projects.map { |project| "#{project.name.ljust(20)} Alias: #{project.alias}" }.join("\n")
           end
    sender.send_message(user, "```#{text}```")
  end
end
