module ApiDoc
  module V1
    module Holidays
      extend Dox::DSL::Syntax

      document :api do
        resource 'Holidays' do
          endpoint '/holidays'
          group 'Holidays'
        end
      end

      document :show do # generates module Docs::Pokemons::Show
        action 'Get a holiday'
      end

      document :index do
        action 'Get holidays'
      end

      document :create do
        action 'Create a holiday'
      end

      document :destroy do
        action 'Delete a holiday'
      end

      document :destroy_multiple do
        action 'Delete multiple holidays'
      end

      document :update do
        action 'Update a holiday'
      end

    end
  end
end
