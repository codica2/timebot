require 'rails_helper'

RSpec.describe 'UserReports API' do
  let(:admin_user) { create :admin }
  let(:team) { create :team }
  let(:project) { create :project, team: team }
  let(:user) { create :user, team: team, is_active: true }
  let(:headers) { auth_headers(admin_user) }

  let!(:time_entry_1) { create(:time_entry, details: 'first', project_id: project.id, user_id: user.id) }
  let!(:time_entry_2) { create(:time_entry, details: 'second', project_id: project.id, user_id: user.id) }
  let!(:time_entry_3) { create(:time_entry, details: 'third') }

  describe 'GET /user_reports/' do
    it 'should generate user report' do
      get '/api/v1/reports/user_reports', headers: headers
      expect(json['data'].count).to eq 1
    end
  end

  describe 'GET /user_reports/worked_time' do
    it 'should generate user worked time report' do
      total_time = ([time_entry_1, time_entry_2].pluck(:minutes).inject(:+).to_f / 60.0).round(2)
      get '/api/v1/reports/user_reports/worked_time', headers: headers

      expect(json['data'].count).to eq 2
      expect(json['data'].first['projects'].count).to eq 1
      expect(json['data'].first['total_time_spent']).to eq total_time
    end

    it 'applies filters for user worked time report' do
      params = { by_users: [user.id] }
      get '/api/v1/reports/user_reports/worked_time', headers: headers, params: params

      expect(json['data'].count).to eq 1
      expect(json['data'].first['id']).to eq user.id
    end
  end

end
