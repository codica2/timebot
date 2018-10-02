# frozen_string_literal: true

module Api
  module V1
    class AbsencesController < ApplicationController
      before_action :set_absence, only: %i[show update destroy]

      # TODO: remove after authentication implementation
      skip_before_action :verify_authenticity_token

      def index
        absences = Absence.filter(filtering_params).paginate(params)
        render json: absences, meta: { total_count: absences.total_count }
      end

      def show
        render json: @absence
      end

      def create
        absence = Absence.new(absence_params)
        if absence.save
          render json: absence, status: :created
        else
          render json: absence.errors, status: :unprocessable_entity
        end
      end

      def update
        if @absence.update(absence_params)
          render json: @absence, status: :ok
        else
          render json: @absence.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @absence.destroy
      end

      private

      def set_absence
        @absence = Absence.find(params[:id])
      end

      def absence_params
        params.require(:absence).permit(:reason, :comment, :user_id, :date)
      end

      def filtering_params
        params.permit(:by_user, :by_reason, :date_from, :date_to)
      end
    end
  end
end
