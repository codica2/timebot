# frozen_string_literal: true

class JsonWebToken
  ALGORYTHM = 'HS256'

  class << self
    def encode(payload, exp = 2.hours)
      payload[:exp] = Time.current.to_i + exp.to_i
      { token: JWT.encode(payload, auth_secret, ALGORYTHM), exp: exp.to_i }
    end

    def decode(token)
      JWT.decode(token, auth_secret, ALGORYTHM).first
    rescue JWT::ExpiredSignature, JWT::DecodeError, JWT::VerificationError => _e
      raise ExceptionHandler::UnauthorizedRequestError, 'Unauthorized'
    end

    private

    def auth_secret
      ENV.fetch('SECRET_KEY')
    end
  end
end
