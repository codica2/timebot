module ApiDoc
  module V1
    module Dashboard
      extend Dox::DSL::Syntax

      document :api do
        resource 'Dashboard' do
          endpoint '/dashboard'
          group 'Dashboard'
        end
      end

      document :index do
        action 'Get dashboard info'
      end

    end
  end
end
