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

      document :index do
        action 'Get users'
      end

    end
  end
end
