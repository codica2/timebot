# frozen_string_literal: true

module Api
  module V1
    class TimeEntriesController < ApplicationController
      # TODO: remove after authentication implementation
      skip_before_action :verify_authenticity_token

      # GET /api/v1/time_entries/
      def index
        time_entries = TimeEntry.filter(filtering_params).paginate(params)
        render json: time_entries, include: ['project', 'user'], meta: { total_count: time_entries.total_count }
      end

      # GET /api/v1/time_entries/:id
      def show
        time_entry = TimeEntry.find_by(id: params[:id])
        render json: time_entry
      end

      # POST /api/v1/time_entries/
      def create
        time_entry = TimeEntry.new(time_entry_params)
        if time_entry.save
          render json: time_entry, include: ['project', 'user'], status: :created
        else
          render json: time_entry.errors, status: :unprocessable_entity
        end
      end

      # PUT /api/v1/time_entries/:id
      def update
        time_entry = TimeEntry.find_by(id: params[:id])
        if time_entry.update(time_entry_params)
          render json: time_entry, include: ['project', 'user'], status: :ok
        else
          render json: time_entry.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/time_entries/
      def destroy
        TimeEntry.find_by(id: params[:id]).destroy
        head :ok
      end

      private

      def time_entry_params
        params.require(:time_entry).permit(:user_id, :time, :minutes, :date, :details, :project_id)
      end

      def filtering_params
        params.permit(:date_from, :with_ticket, :date_to, by_projects: [], by_users: [])
      end
    end
  end
end
