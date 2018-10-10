module ApiDoc
  module V1
    module Admins
      extend Dox::DSL::Syntax

      document :api do
        resource 'Admins' do
          endpoint '/admins'
          group 'Admins'
        end
      end

      document :show do # generates module Docs::Pokemons::Show
        action 'Get an admin'
      end

      document :index do
        action 'Get admins'
      end

      document :create do
        action 'Create an admin'
      end

      document :destroy do
        action 'Delete an admin'
      end

      document :update do
        action 'Update an admin'
      end

    end
  end
end
