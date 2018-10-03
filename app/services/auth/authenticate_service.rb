module Auth

  class AuthenticateService < BaseService

    def initialize(params = {})
      @email = params[:email]
      @password = params[:password]
    end
    
    def call
      process_response
    end
    
    private
    
    attr_reader :password, :email

    def process_response
      if token.present?
        { json: { jwt: token } }
      else
        { json: { message: 'Invalid email or password' }, status: :unauthorized }
      end
    end

    def token
      @user ||= Admin.find_by(email: email)
      if @user.present? && @user.valid_password?(password)
        JsonWebToken.encode({user_id: @user.id})
      end
    end

  end

end