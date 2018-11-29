module ApiDoc
  module V1
    module Projects
      extend Dox::DSL::Syntax

      document :api do # generates module Docs::Pokemons::Api
        resource 'Projects' do
          endpoint '/projects'
          group 'Projects'
        end
      end

      document :show do # generates module Docs::Pokemons::Show
        action 'Get a project'
      end

      document :index do
        action 'Get projects'
      end

      document :create do
        action 'Create a project'
      end

      document :destroy do
        action 'Delete a project'
      end

      document :destroy_multiple do
        action 'Delete multiple projects'
      end

      document :update do
        action 'Update a project'
      end

      document :search do
        action 'Search by name'
      end

    end
  end
end
