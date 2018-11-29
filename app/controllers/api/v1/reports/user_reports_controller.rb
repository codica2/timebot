# frozen_string_literal: true

module Api
  module V1
    module Reports
      class UserReportsController < ApplicationController
        def index
          render ::Reports::UserReportService.call(filters: filtering_params)
        end

        def worked_time
          render ::Reports::UserWorkedTimeService.call(filters: user_worked_time_filters)
        end

        def absence
          render ::Reports::UserAbsenceService.call(filters: user_absence_filters)
        end

        private

        def filtering_params
          params.permit(:date_from, :date_to)
        end

        def user_worked_time_filters
          params.permit(:date_from, :date_to, by_users: [], by_projects: [])
        end

        def user_absence_filters
          params.permit(:date_from, :date_to)
        end
      end
    end
  end
end
