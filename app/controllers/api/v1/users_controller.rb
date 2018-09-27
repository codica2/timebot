module Api

  module V1

    class UsersController < ApplicationController
      include Rails::Pagination
      # TODO: remove after authentication implementation
      skip_before_action :verify_authenticity_token

      # GET /api/v1/users/
      def index
        users = User.all
        render json: users
      end

    end

  end

end
