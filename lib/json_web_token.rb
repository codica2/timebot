class JsonWebToken

  ALGORYTHM = 'HS256'

  class << self

    def encode(payload, exp = 2.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode payload, auth_secret, ALGORYTHM
    end

    def decode(token)
      JWT.decode(token, auth_secret, ALGORYTHM).first
    rescue JWT::ExpiredSignature, JWT::DecodeError, JWT::VerificationError => e
      raise ExceptionHandler::UnauthorizedRequestError, 'Unauthorized'
    end

    private

    def auth_secret
      ENV.fetch('SECRET_KEY')
    end

  end

end