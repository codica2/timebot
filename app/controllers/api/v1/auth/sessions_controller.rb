# frozen_string_literal: true

module Api
  module V1
    module Auth
      class SessionsController < ApplicationController
        skip_before_action :authenticate_user!
        skip_before_action :verify_authenticity_token

        def create
          render ::Auth::AuthenticateService.call(auth_params)
        end

        private

        def auth_params
          params.permit(:email, :password)
        end
      end
    end
  end
end
