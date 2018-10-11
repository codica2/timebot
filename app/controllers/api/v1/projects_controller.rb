# frozen_string_literal: true

module Api
  module V1
    class ProjectsController < ApplicationController
      before_action :set_project, only: %i[show update destroy]

      def index
        projects = Project.filter(filtering_params).paginate(params)
        render json: projects, include: ['team'], meta: { total_count: projects.total_count }
      end

      def search
        render json: Project.search(filtering_params)
      end

      def show
        render json: @project
      end

      def create
        project = Project.new(project_params)
        if project.save
          render json: project, status: :ok
        else
          render json: project.errors, status: :unprocessable_entity
        end
      end

      def update
        if @project.update(project_params)
          render json: @project, status: :ok
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @project.destroy
        head :ok
      end

      private

      def project_params
        params.require(:project).permit(:name, :alias, :team_id)
      end

      def set_project
        @project = Project.find(params[:id])
      end

      def filtering_params
        params.permit(:by_name, :by_alias)
      end
    end
  end
end
