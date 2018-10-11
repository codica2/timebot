# frozen_string_literal: true

module Api
  module V1
    class DashboardController < ApplicationController
      def index
        render json: DashboardInfo.call(filters: filtering_params)
      end

      private

      def dashboard_params
        params.permit(:start_date, :end_date)
      end

      def filtering_params
        params.permit(:date_from, :date_to)
      end
    end
  end
end
