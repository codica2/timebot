require 'rails_helper'

RSpec.describe 'Absences API' do
  include ApiDoc::V1::Absences::Api

  let!(:user) { create :user }
  let!(:absences) { create_list(:absence, 5) }
  let(:valid_params) { { absence: attributes_for(:absence, user_id: user.id) } }
  let(:invalid_params) { { absence: attributes_for(:absence, comment: nil) } }

  describe 'GET /absences/' do
    include ApiDoc::V1::Absences::Index

    it 'Get absences', :dox do
      get '/api/v1/absences'
      expect(response).to be_success
      expect(json['data'].count).to eq(5)
    end
  end

  describe 'GET /absences/:id' do
    include ApiDoc::V1::Absences::Show

    it 'Show absence by id', :dox do
      absence = absences.sample
      get "/api/v1/absences/#{absence.id}"

      expect(response).to be_success
      expect(json.dig('data', 'id')).to eq(absence.id.to_s)
    end
  end

  context 'with valid params' do
    describe 'DELETE /absences/:id', :dox do
      include ApiDoc::V1::Absences::Destroy
  
      it 'Delete absence by id', :dox do
        absence = absences.sample
        delete "/api/v1/absences/#{absence.id}"
        expect(response).to be_success
        expect(Absence.find_by(id: absence.id)).to eq(nil)
      end
    end
  
    describe 'POST /absences/', :dox do
      include ApiDoc::V1::Absences::Create
      
      it 'Create absence', :dox do
        users_number = absences.count
        post('/api/v1/absences/', params: valid_params)

        expect(response).to be_success
        expect(json).to have_key('data')
        expect(users_number).to be < Absence.count
      end
    end
  
    describe 'PUT /absences/:id', :dox do
      include ApiDoc::V1::Absences::Update
  
      it 'Update absence' do
        absence = absences.sample
        params = { absence: { comment: 'Comment' } }
        put "/api/v1/absences/#{absence.id}", params: params

        expect(response).to be_success
        expect(json.dig('data', 'attributes', 'comment')).to eq 'Comment'
      end
    end
  end

  context 'with invalid params' do
    describe 'POST /absences/' do
      it 'Create absence' do
        post('/api/v1/absences/', params: invalid_params)
        expect(response).to have_http_status :unprocessable_entity
        expect(json['comment'].first).to eq 'must not be nil'
      end
    end
  end
end