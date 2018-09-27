module ApiDoc
  module V1
    module Teams
      extend Dox::DSL::Syntax

      document :api do # generates module Docs::Pokemons::Api
        resource 'Teams' do
          endpoint '/teams'
          group 'Teams'
        end
      end

      document :show do # generates module Docs::Pokemons::Show
        action 'Get a teams'
      end

      document :index do
        action 'Get teams'
      end

      document :all do
        action 'Get all teams'
      end

      document :create do
        action 'Create a teams'
      end

      document :destroy do
        action 'Delete a teams'
      end

      document :update do
        action 'Update a teams'
      end

    end
  end
end
