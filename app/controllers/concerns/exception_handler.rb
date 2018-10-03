module ExceptionHandler

  extend ActiveSupport::Concern

  class UnauthorizedRequestError < StandardError; end

  included do
    rescue_from ExceptionHandler::UnauthorizedRequestError, with: :unauthorized_request
  end

  private

  def unauthorized_request(e)
    render json: { message: e }, status: :unauthorized
  end

end