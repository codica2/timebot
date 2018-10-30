# frozen_string_literal: true

module Api
  module V1
    class TimeEntriesController < ApplicationController
      before_action :set_time_entry, only: %i[show update destroy]

      def index
        time_entries = TimeEntry.includes(:project, user: [:team]).filter(filtering_params).paginate(params)
        render json: time_entries, include: %w[project user], meta: { total_count: time_entries.total_count }
      end

      def show
        render json: @time_entry
      end

      def create
        time_entry = TimeEntry.new(time_entry_params)
        if time_entry.save
          render json: time_entry, include: %w[project user], status: :created
        else
          render json: time_entry.errors, status: :unprocessable_entity
        end
      end

      def update
        if @time_entry.update(time_entry_params)
          render json: @time_entry, include: %w[project user], status: :ok
        else
          render json: @time_entry.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @time_entry.destroy
        head :ok
      end

      def delete_multiple
        TimeEntry.where(id: params[:time_entry_ids]).destroy_all
      end

      private

      def time_entry_params
        params.require(:time_entry).permit(:user_id, :time, :date, :details, :project_id)
      end

      def set_time_entry
        @time_entry = TimeEntry.find(params[:id])
      end

      def filtering_params
        params.permit(:date_from, :with_ticket, :date_to, by_projects: [], by_users: [])
      end
    end
  end
end
