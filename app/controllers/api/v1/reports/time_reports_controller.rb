# frozen_string_literal: true

module Api
  module V1
    module Reports
      class TimeReportsController < ApplicationController
        def index
          render ::Reports::TimeReportService.call(filters: filtering_params, pagination: params)
        end

        private

        def filtering_params
          params.permit(:date_from, :date_to, by_projects: [])
        end
      end
    end
  end
end
