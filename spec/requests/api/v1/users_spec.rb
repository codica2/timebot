require 'rails_helper'

RSpec.describe 'Users API' do
  include ApiDoc::V1::Users::Api

  let!(:users) { create_list(:user, 5) }

  let(:valid_params) { { user: attributes_for(:user) } }

  let(:invalid_params) { { user: attributes_for(:user, name: nil) } }

  let(:user) { create :admin }
  let(:headers) { auth_headers(user) }

  describe 'GET /users/' do
    include ApiDoc::V1::Users::Index

    it 'Get users', :dox do
      get '/api/v1/users', headers: headers
      expect(response).to be_success
      expect(json['data'].count).to eq(5)
    end
  end

  describe 'GET /users/:id' do
    include ApiDoc::V1::Users::Show

    it 'Show user by id', :dox do
      user = users.sample
      get "/api/v1/users/#{user.id}", headers: headers

      expect(response).to be_success
      expect(json.dig('data', 'id')).to eq(user.id.to_s)
    end
  end

  context 'with valid params' do
    describe 'DELETE /users/:id', :dox do
      include ApiDoc::V1::Users::Destroy
  
      it 'Delete user by id', :dox do
        user = users.sample
        delete "/api/v1/users/#{user.id}", headers: headers
        expect(response).to be_success
        expect(User.find_by(id: user.id)).to eq(nil)
      end
    end
  
    describe 'POST /users/', :dox do
      include ApiDoc::V1::Users::Create
      
      it 'Create user', :dox do
        users_number = users.count
        post '/api/v1/users/', params: valid_params, headers: headers
        expect(response).to be_success
        expect(json).to have_key('data')
        expect(users_number).to be < User.count
      end
    end
  
    describe 'PUT /users/:id', :dox do
      include ApiDoc::V1::Users::Update
  
      it 'Update user' do
        user = users.sample
        params = { user: { name: user.name.upcase } }
        put "/api/v1/users/#{user.id}", params: params, headers: headers
  
        expect(response).to be_success
        expect(json.dig('data', 'attributes', 'name')).to eq(user.name.upcase)
      end
    end
  end

  context 'with invalid params' do
    describe 'POST /users/' do
      it 'Create user' do
        post '/api/v1/users/', params: invalid_params, headers: headers
        expect(response).to have_http_status :unprocessable_entity
        expect(json['name'].first).to eq 'can\'t be blank'
      end
    end
  end
end