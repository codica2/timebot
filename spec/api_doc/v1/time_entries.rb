module ApiDoc
  module V1
    module TimeEntries
      extend Dox::DSL::Syntax

      document :api do
        resource 'Time Entries' do
          endpoint '/time_entries'
          group 'Time Entries'
        end
      end

      document :show do
        action 'Get a time entry'
      end

      document :index do
        action 'Get time entries'
      end

      document :create do
        action 'Create a time entry'
      end

      document :destroy do
        action 'Delete a time entry'
      end

      document :destroy_multiple do
        action 'Delete multiple time entries'
      end

      document :update do
        action 'Update a time entry'
      end
    end
  end
end
