require 'rails_helper'

RSpec.describe 'Time Entries API', type: :request do
  include ApiDoc::V1::TimeEntries::Api

  let!(:time_entries) { create_list(:time_entry, 35) }
  let(:user)    { create :user }
  let(:project) { create :project }
  
  let(:admin)    { create :admin }
  let(:headers) { auth_headers(admin) }

  let(:valid_params) do
    {
      time_entry: {
        date: Date.today.to_s,
        time: DateTime.now.strftime('%H:%M'),
        minutes: DateTime.now.minute,
        details: '<https://trello.com/c/hcIRv6W0/1496-google-analytics>',
        trello_labels: ['Feature', 'High Priority', '5'],
        user_id: user.id,
        project_id: project.id
      }
    }
  end

  describe 'GET /time_entries/' do
    include ApiDoc::V1::TimeEntries::Index

    it 'Get time entries', :dox do
      get '/api/v1/time_entries', headers: headers

      expect(response).to be_success
      expect(json['data'].count).to eq(PER_PAGE)
    end
  end

  describe 'GET /time_entries/:id' do
    include ApiDoc::V1::TimeEntries::Show

    it 'Show time entry by id', :dox do
      time_entry = time_entries.sample
      get "/api/v1/time_entries/#{time_entry.id}", headers: headers

      expect(response).to be_success
      expect(json.dig('data', 'id')).to eq(time_entry.id.to_s)
    end
  end

  describe 'DELETE /time_entries/:id', :dox do
    include ApiDoc::V1::TimeEntries::Destroy

    it 'Delete time entry by id', :dox do
      time_entry = time_entries.sample
      delete "/api/v1/time_entries/#{time_entry.id}", headers: headers
      expect(response).to be_success
      expect(TimeEntry.find_by(id: time_entry.id)).to eq(nil)
    end
  end

  describe 'POST /time_entries/', :dox do
    include ApiDoc::V1::TimeEntries::Create

    it 'Create time entry', :dox do
      post '/api/v1/time_entries/', params: valid_params, headers: headers

      expect(response).to have_http_status(:created)
      expect(json).to have_key('data')
    end
  end

  describe 'PUT /time_entries/:id', :dox do
    include ApiDoc::V1::TimeEntries::Update

    it 'Update time entry' do
      time_entry = time_entries.sample
      params = { time_entry: { details: time_entry.details.upcase } }
      put("/api/v1/time_entries/#{time_entry.id}", params: params, headers: headers)

      expect(response).to be_success
      expect(json.dig('data', 'attributes', 'details')).to eq(time_entry.details.upcase)
    end
  end

end
