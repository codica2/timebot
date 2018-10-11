# frozen_string_literal: true

module Api
  module V1
    class AdminsController < ApplicationController
      before_action :set_admin, only: %i[show update destroy]

      def index
        render json: Admin.all
      end

      def show
        render json: @admin
      end

      def create
        admin = Admin.new(admin_params)
        if admin.save
          render json: admin, status: :created
        else
          render json: admin.errors, status: :unprocessable_entity
        end
      end

      def update
        if @admin.update(admin_params)
          render json: @admin, status: :ok
        else
          render json: @admin.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @admin.destroy
      end

      private

      def set_admin
        @admin = Admin.find(params[:id])
      end

      def admin_params
        params.require(:admin).permit(:email, :password)
      end
    end
  end
end
