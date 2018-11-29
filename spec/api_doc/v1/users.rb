module ApiDoc
  module V1
    module Users
      extend Dox::DSL::Syntax

      document :api do
        resource 'Users' do
          endpoint '/users'
          group 'Users'
        end
      end

      document :show do # generates module Docs::Pokemons::Show
        action 'Get a user'
      end

      document :index do
        action 'Get users'
      end

      document :create do
        action 'Create a user'
      end

      document :destroy do
        action 'Delete a user'
      end

      document :destroy_multiple do
        action 'Delete multiple users'
      end

      document :update do
        action 'Update a user'
      end

      document :search do
        action 'Search by name'
      end

    end
  end
end
