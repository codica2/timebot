require 'rails_helper'

RSpec.describe 'Teams API', type: :request do
  include ApiDoc::V1::Teams::Api

  let!(:teams) { create_list(:team, 5) }

  let(:valid_params) { { team: attributes_for(:team) } }
  let(:invalid_params) { { team: attributes_for(:team, name: nil) } }

  let(:user) { create :admin }
  let(:headers) { auth_headers(user) }

  describe 'GET /teams/' do
    include ApiDoc::V1::Teams::Index

    it 'Get teams', :dox do
      get '/api/v1/teams', headers: headers
      expect(response).to be_success
      expect(json['data'].count).to eq(5)
    end
  end

  describe 'GET /teams/:id' do
    include ApiDoc::V1::Teams::Show

    it 'Show team by id', :dox do
      team = teams.sample
      get "/api/v1/teams/#{team.id}", headers: headers

      expect(response).to be_success
      expect(json.dig('data', 'id')).to eq(team.id.to_s)
    end
  end

  context 'with valid params' do
    describe 'DELETE /teams/:id', :dox do
      include ApiDoc::V1::Teams::Destroy
  
      it 'Delete team by id', :dox do
        team = teams.sample
        delete "/api/v1/teams/#{team.id}", headers: headers
        expect(response).to be_success
        expect(Team.find_by(id: team.id)).to eq(nil)
      end
    end

    describe 'DELETE /teams/delete_multiple', :dox do
      include ApiDoc::V1::Teams::DestroyMultiple

      it 'Delete teams by ids', :dox do
        params = { team_ids: teams.pluck(:id) }
        delete "/api/v1/teams/delete_multiple", headers: headers, params: params

        expect(response).to be_success
        expect(Team.count).to eq 0
      end
    end
  
    describe 'POST /teams/', :dox do
      include ApiDoc::V1::Teams::Create
  
      it 'Create team', :dox do
        teams_number = teams.count
        post('/api/v1/teams/', params: valid_params, headers: headers)
        expect(response).to be_success
        expect(json).to have_key('data')
        expect(teams_number).to be < Team.count
      end
    end
  
    describe 'PUT /teams/:id', :dox do
      include ApiDoc::V1::Teams::Update
  
      it 'Update team' do
        team = teams.sample
        params = { team: { name: team.name.upcase } }
        put("/api/v1/teams/#{team.id}", params: params, headers: headers)
  
        expect(response).to be_success
        expect(json.dig('data', 'attributes', 'name')).to eq(team.name.upcase)
      end
    end
  end

  context 'with invalid params' do
    describe 'POST /teams/' do
      it 'Create team' do
        post('/api/v1/teams/', params: invalid_params, headers: headers)
        expect(response).to have_http_status :unprocessable_entity
        expect(json['name'].first).to eq 'can\'t be blank'
      end
    end
  end
end
