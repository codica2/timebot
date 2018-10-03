require 'rails_helper'

RSpec.describe 'JWT' do
  let(:user) { create :user }
  let(:token) { JsonWebToken.encode({ user_id: user.id }) }

  describe 'encode/decode' do
    it 'should generate right token' do
      expect(token.split('.').count).to eq 3
    end
    
    it 'should decode token' do
      payload = JsonWebToken.decode(token)
  
      expect(payload['user_id']).to eq user.id
    end
  end

  describe 'exceptions' do
    it 'should raise right exception' do
      expired_token = JsonWebToken.encode({ user_id: user.id }, Time.current - 1.minutes)
      wrong_token = 'my.wrong.token'
      very_wrong_token = 'fdgdgf'

      expect{
        JsonWebToken.decode(expired_token)
      }.to raise_error ExceptionHandler::UnauthorizedRequestError

      expect{
        JsonWebToken.decode(wrong_token)
      }.to raise_error ExceptionHandler::UnauthorizedRequestError

      expect{
        JsonWebToken.decode(very_wrong_token)
      }.to raise_error ExceptionHandler::UnauthorizedRequestError

      expect{
        JsonWebToken.decode(nil)
      }.to raise_error ExceptionHandler::UnauthorizedRequestError
    end
  end

end