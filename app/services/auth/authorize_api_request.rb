# frozen_string_literal: true

module Auth
  class AuthorizeApiRequest < BaseService
    def initialize(headers = {})
      @auth_header = headers['Authorization']
    end

    def call
      user
    end

    private

    attr_reader :auth_header

    def token_from_headers
      @token ||= auth_header.scan(/Bearer (.*)$/)&.flatten&.first if auth_header.present?
    end

    def decoded_payload
      @payload ||= JsonWebToken.decode(token_from_headers) if token_from_headers.present?
    end

    def user
      @user ||= Admin.find_by(id: decoded_payload['user_id']) if decoded_payload.present?
    end
  end
end
