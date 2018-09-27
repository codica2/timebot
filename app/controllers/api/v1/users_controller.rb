module Api

  module V1

    class UsersController < ApplicationController

      before_action :set_user, only: [:show, :update, :destroy]

      # TODO: remove after authentication implementation
      skip_before_action :verify_authenticity_token

      def index
        render json: User.all
      end

      def show
        render json: @user
      end

      def create
        user = User.new(user_params)
        if user.save
          render json: user, status: :created
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def update
        if @user.update(user_params)
          render json: @user, status: :ok
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @user.destroy
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:name, :description, :is_active, :team_id, :last_message, :role, :uid)
      end

    end

  end

end
