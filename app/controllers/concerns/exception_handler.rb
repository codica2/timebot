# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  class UnauthorizedRequestError < StandardError; end
  included do
    rescue_from ExceptionHandler::UnauthorizedRequestError, with: :unauthorized_request
  end

  private

  def unauthorized_request(message)
    render json: { message: message }, status: :unauthorized
  end
end
