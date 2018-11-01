# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ExceptionHandler

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, unless: proc { Rails.env.development? }

  attr_reader :current_user

  private

  def authenticate_user!
    @current_user = ::Auth::AuthorizeApiRequest.call(request.headers)
    raise ExceptionHandler::UnauthorizedRequestError, 'Unauthorized' if current_user.blank?
  end

end
