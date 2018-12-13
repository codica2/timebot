# frozen_string_literal: true

module Api
  module V1
    class AbsencesController < ApplicationController
      before_action :set_absence, only: %i[show update destroy]

      def index
        absences = Absence.includes(user: [:team]).filter(filtering_params)
        render json: absences, include: ['user']
      end

      def show
        render json: @absence
      end

      def create
        absences = Absence.create(multiple_absences_params)
        if absences.any? { |abs| abs.errors.any? }
          render json: absences.map(&:errors), status: :unprocessable_entity
        else
          render json: absences, include: ['user'], status: :created
        end
      end

      def update
        if @absence.update(absence_params)
          render json: @absence, include: ['user'], status: :ok
        else
          render json: @absence.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @absence.destroy
      end

      def delete_multiple
        Absence.where(id: params[:absence_ids]).destroy_all
      end

      private

      def set_absence
        @absence = Absence.find(params[:id])
      end

      def multiple_absences_params
        params[:absences].map do |param|
          param.require(:absence).permit(:reason, :comment, :user_id, :date)
        end
      end

      def absence_params
        params.require(:absence).permit(:reason, :comment, :user_id, :date)
      end

      def filtering_params
        params.permit(:by_user, :by_reason, :date_from, :date_to, :by_active_users)
      end
    end
  end
end
