# frozen_string_literal: true

module Api
  module V1
    class HolidaysController < ApplicationController
      before_action :set_holiday, only: %i[show update destroy]

      # TODO: remove after authentication implementation
      skip_before_action :verify_authenticity_token

      def index
        render json: Holiday.filter(filtering_params)
      end

      def show
        render json: @holiday
      end

      def create
        holiday = Holiday.new(holiday_params)
        if holiday.save
          render json: holiday, status: :created
        else
          render json: holiday.errors, status: :unprocessable_entity
        end
      end

      def update
        if @holiday.update(holiday_params)
          render json: @holiday, status: :ok
        else
          render json: @holiday.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @holiday.destroy
      end

      private

      def set_holiday
        @holiday = Holiday.find(params[:id])
      end

      def holiday_params
        params.require(:holiday).permit(:name, :date)
      end

      def filtering_params
        params.permit(:by_name, :date_from, :date_to)
      end
    end
  end
end
