# frozen_string_literal: true

module Api
  module V1
    class ProjectsController < ApplicationController
      # TODO: remove after authentication implementation
      skip_before_action :verify_authenticity_token

      # GET /api/v1/projects/
      def index
        projects = Project.filter(filtering_params).paginate(params)
        render json: projects, meta: { total_count: projects.total_count }
      end

      def search
        render json: Project.search(filtering_params)
      end

      # GET /api/v1/projects/:id
      def show
        project = Project.find_by(id: params[:id])
        render json: project
      end

      # POST /api/v1/projects/
      def create
        project = Project.new(project_params)
        if project.save
          render json: project, status: :ok
        else
          render json: project.errors, status: :unprocessable_entity
        end
      end

      # PUT /api/v1/projects/:id
      def update
        project = Project.find_by(id: params[:id])
        if project.update(project_params)
          render json: project, status: :ok
        else
          render json: project.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/projects/
      def destroy
        Project.find_by(id: params[:id]).destroy
        head :ok
      end

      private

      def project_params
        params.require(:project).permit(:name, :alias, :team_id)
      end

      def filtering_params
        params.permit(:by_name, :by_alias)
      end
    end
  end
end
