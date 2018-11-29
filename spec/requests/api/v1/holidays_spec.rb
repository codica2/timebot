require 'rails_helper'

RSpec.describe 'Holidays API' do
  include ApiDoc::V1::Holidays::Api

  let(:user) { create :admin }
  let!(:holidays) { create_list(:holiday, 5) }
  let(:valid_params) { { holiday: attributes_for(:holiday) } }
  let(:invalid_params) { { holiday: attributes_for(:holiday, name: nil) } }

  let(:headers) { auth_headers(user) }

  describe 'GET /holidays/' do
    include ApiDoc::V1::Holidays::Index

    it 'Get holidays', :dox do
      get '/api/v1/holidays', headers: headers

      expect(response).to be_success
      expect(json['data'].count).to eq(5)
    end
  end

  describe 'GET /holidays/:id' do
    include ApiDoc::V1::Holidays::Show

    it 'Show holiday by id', :dox do
      holiday = holidays.sample
      get "/api/v1/holidays/#{holiday.id}", headers: headers

      expect(response).to be_success
      expect(json.dig('data', 'id')).to eq(holiday.id.to_s)
    end
  end

  context 'with valid params' do
    describe 'DELETE /holidays/:id', :dox do
      include ApiDoc::V1::Holidays::Destroy
  
      it 'Delete holiday by id', :dox do
        holiday = holidays.sample
        delete "/api/v1/holidays/#{holiday.id}", headers: headers
        expect(response).to be_success
        expect(Holiday.find_by(id: holiday.id)).to eq(nil)
      end
    end

    describe 'DELETE /holidays/delete_multiple', :dox do
      include ApiDoc::V1::Holidays::DestroyMultiple
  
      it 'Delete holidays by ids', :dox do
        params = { holiday_ids: holidays.pluck(:id) }
        delete "/api/v1/holidays/delete_multiple", headers: headers, params: params
  
        expect(response).to be_success
        expect(Holiday.count).to eq 0
      end
    end
  
    describe 'POST /holidays/', :dox do
      include ApiDoc::V1::Holidays::Create
      
      it 'Create holiday', :dox do
        users_number = holidays.count
        post '/api/v1/holidays/', params: valid_params, headers: headers
        expect(response).to be_success
        expect(json).to have_key('data')
        expect(users_number).to be < Holiday.count
      end
    end
  
    describe 'PUT /holidays/:id', :dox do
      include ApiDoc::V1::Holidays::Update
  
      it 'Update holiday' do
        holiday = holidays.sample
        params = { holiday: { name: holiday.name.upcase } }
        put "/api/v1/holidays/#{holiday.id}", params: params, headers: headers
  
        expect(response).to be_success
        expect(json.dig('data', 'attributes', 'name')).to eq(holiday.name.upcase)
      end
    end
  end

  context 'with invalid params' do
    describe 'POST /holidays/' do
      it 'Create holiday' do
        post '/api/v1/holidays/', params: invalid_params, headers: headers
        expect(response).to have_http_status :unprocessable_entity
        expect(json['name'].first).to eq 'can\'t be blank'
      end
    end
  end
end