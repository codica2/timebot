module ApiDoc
  module V1
    module Absences
      extend Dox::DSL::Syntax

      document :api do
        resource 'Absences' do
          endpoint '/absences'
          group 'Absences'
        end
      end

      document :show do # generates module Docs::Pokemons::Show
        action 'Get an absence'
      end

      document :index do
        action 'Get absences'
      end

      document :create do
        action 'Create an absence'
      end

      document :destroy do
        action 'Delete an absence'
      end

      document :update do
        action 'Update an absence'
      end

    end
  end
end
