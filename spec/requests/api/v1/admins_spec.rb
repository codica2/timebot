require 'rails_helper'

RSpec.describe 'Admins API' do
  include ApiDoc::V1::Admins::Api

  let!(:admins) { create_list(:admin, 5) }
  let(:valid_params) { { admin: attributes_for(:admin) } }
  let(:invalid_params) { { admin: attributes_for(:admin, email: nil) } }

  let(:admin_user) { create :admin }
  let(:headers) { auth_headers(admin_user) }

  describe 'GET /admins/' do
    include ApiDoc::V1::Admins::Index

    it 'Get admins', :dox do
      get '/api/v1/admins', headers: headers

      expect(response).to be_success
      expect(json['data'].count).to eq(6)
    end
  end

  describe 'GET /admins/:id' do
    include ApiDoc::V1::Admins::Show

    it 'Show admin by id', :dox do
      admin = admins.sample
      get "/api/v1/admins/#{admin.id}", headers: headers

      expect(response).to be_success
      expect(json.dig('data', 'id')).to eq(admin.id.to_s)
    end
  end

  context 'with valid params' do
    describe 'DELETE /admins/:id', :dox do
      include ApiDoc::V1::Admins::Destroy
  
      it 'Delete admin by id', :dox do
        admin = admins.sample
        delete "/api/v1/admins/#{admin.id}", headers: headers
        expect(response).to be_success
        expect(Admin.find_by(id: admin.id)).to eq(nil)
      end
    end
  
    describe 'POST /admins/', :dox do
      include ApiDoc::V1::Admins::Create
      
      it 'Create admin', :dox do
        users_number = admins.count
        post('/api/v1/admins/', params: valid_params, headers: headers)

        expect(response).to be_success
        expect(json).to have_key('data')
        expect(users_number).to be < Admin.count
      end
    end
  
    describe 'PUT /admins/:id', :dox do
      include ApiDoc::V1::Admins::Update
  
      it 'Update admin' do
        admin = admins.sample
        params = { admin: { email: 'email@mail.com' } }
        put "/api/v1/admins/#{admin.id}", params: params, headers: headers

        expect(response).to be_success
        expect(json.dig('data', 'attributes', 'email')).to eq 'email@mail.com'
      end
    end
  end

  context 'with invalid params' do
    describe 'POST /admins/' do
      it 'Create admin' do
        post('/api/v1/admins/', params: invalid_params, headers: headers)
        expect(response).to have_http_status :unprocessable_entity
        expect(json['email'].first).to eq 'can\'t be blank'
      end
    end
  end
end