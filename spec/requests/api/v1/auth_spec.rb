require 'rails_helper'

RSpec.describe 'Auth' do

  let(:admin) { create :admin, password: '123456' }

  describe 'Unauthorized user' do
    it 'shouldn\'t get access to any of resources when there is no auth header' do
      get '/api/v1/projects'

      expect(response).to have_http_status(:unauthorized)
      expect(json['message']).to eq 'Unauthorized'
    end

    it 'shouldn\'t get access to any of resources when there is wrong auth header' do
      token = JsonWebToken.encode({user_id: admin.id})
      headers = { 'Authorization': "BearerWrong #{token}" }
      get '/api/v1/projects', headers: headers

      expect(response).to have_http_status(:unauthorized)
      expect(json['message']).to eq 'Unauthorized'
    end

    it 'shouldn\'t get access to any of resources when there is wrong token' do
      token = JsonWebToken.encode({user_id: 9379992})
      headers = { 'Authorization': "Bearer #{token}" }
      get '/api/v1/projects'

      expect(json['message']).to eq 'Unauthorized'
      expect(response).to have_http_status(:unauthorized)
    end

    it 'shouldn\'t get access to any of resources when there is expired token' do
      expired_token = JsonWebToken.encode({user_id: admin.id}, Time.current - 1.minute)
      headers = { 'Authorization': "Bearer #{expired_token}" }
      get '/api/v1/projects', headers: headers

      expect(json['message']).to eq 'Unauthorized'
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'Anauthorized user' do
    it 'should get access to all resources' do
      token = JsonWebToken.encode({user_id: admin.id})
      headers = {'Authorization': "Bearer #{token}"}
      get '/api/v1/projects', headers: headers

      expect(response).to have_http_status(:ok)
    end
  end

end