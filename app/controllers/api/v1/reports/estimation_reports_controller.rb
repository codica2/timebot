# frozen_string_literal: true

module Api
  module V1
    module Reports
      class EstimationReportsController < ApplicationController
        def index
          render ::Reports::EstimationReportService.call(filters: filtering_params, pagination: params)
        end

        private

        def filtering_params
          params.permit(:date_from, :with_ticket, :date_to, by_projects: [], by_users: [])
        end
      end
    end
  end
end
