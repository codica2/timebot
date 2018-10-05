module ApiDoc
  module V1
    module Reports
      module EstimationReports
        extend Dox::DSL::Syntax

        document :api do
          resource 'EstimationReports' do
            endpoint '/reports/estimation_reports'
            group 'EstimationReports'
          end
        end

        document :index do
          action 'Get report'
        end

      end
    end
  end
end
