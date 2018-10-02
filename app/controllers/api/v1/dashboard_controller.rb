# frozen_string_literal: true

module Api
  module V1
    class DashboardController < ApplicationController
      def index
        render json: DashboardInfo.call(dashboard_params['start_date'], dashboard_params['end_date'])
      end

      private

      def dashboard_params
        params.permit(:start_date, :end_date)
      end
    end
  end
end
