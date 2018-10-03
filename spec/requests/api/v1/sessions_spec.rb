require 'rails_helper'

RSpec.describe 'Sessions API' do

  let(:admin) { create :admin, password: '123456' }

  describe '.create' do
    context 'with valid params' do
      it 'should get jwt token' do
        params = { email: admin.email, password: '123456' }
        post '/api/v1/auth/sessions', params: params

        expect(json['jwt'].split('.').count).to eq 3
        expect(response).to have_http_status(:ok)
      end
    end

    context 'with invalid params' do
      it 'should return eror message' do
        params = { email: admin.email, password: 'WRONG!!!' }
        post '/api/v1/auth/sessions', params: params

        expect(json['message']).to eq 'Invalid email or password'
        expect(response).to have_http_status 401
      end
    end
  end

end