# frozen_string_literal: true

module Api
  module V1
    class TeamsController < ApplicationController
      before_action :set_team, only: %i[show update destroy]

      def index
        render json: Team.filter(filtering_params)
      end

      def show
        render json: @team
      end

      def create
        team = Team.new(team_params)
        if team.save
          render json: team, status: :created
        else
          render json: team.errors, status: :unprocessable_entity
        end
      end

      def update
        if @team.update(team_params)
          render json: @team, status: :ok
        else
          render json: @team.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @team.destroy
      end

      private

      def set_team
        @team = Team.find(params[:id])
      end

      def team_params
        params.require(:team).permit(:name, :description)
      end

      def filtering_params
        params.permit(:by_project, :by_user)
      end
    end
  end
end
