require 'rails_helper'

RSpec.describe 'Filters API' do

  let!(:team_a) { create :team, name: 'A' }
  let!(:team_c) { create :team, name: 'C' }
  
  let(:user_1) { create :user, :active, team: team_c, name: 'Rick' }
  let(:user_2) { create :user }

  let(:admin_user) { create :admin }
  let(:headers) { auth_headers(admin_user) }

  let!(:absence_with_date) { create :absence, date: Time.current - 2.days }
  let!(:absence) { create :absence, :vacation, user_id: user_1.id }
  let!(:absences) { create_list :absence, 5, :illness, user_id: user_2.id, date: Time.current - 10.days }
  
  let!(:holidays) { 5.times { |t| create :holiday, date: Time.current - (10-t).days } }
  let!(:holiday) { create :holiday, name: 'Independence day', date: Time.current - 2.days }

  let!(:project) { create :project, name: 'Africar', alias: 'africa group', team: team_c }
  let!(:projects) { create_list :project, 5 }

  let!(:time_entry_1) { create :time_entry, date: Time.current - 2.days, user: user_1, project: project, details: '<https://trello.com/path/to/difficult/task> Comment' }
  let!(:time_entry_2) { create :time_entry, user: user_2, project: projects.last }
  let!(:time_entry_3) { create :time_entry, user: user_2, project: projects.first, date: Time.current - 20.days, details: '<https://trello.com/path/to/second/difficult/task> Comment' }
  let!(:time_entries) { projects.each_with_index { |p, t| create :time_entry, project: p, date: Time.current - (10-t).days } }

  describe 'absence filters' do
    it 'aplyes filter by user id' do
      params = { by_user: user_1.id }
      get "/api/v1/absences", params: params, headers: headers

      expect(json['data'].count).to eq 1
      expect(json['data'].first.dig('relationships', 'user', 'data', 'id')).to eq user_1.id.to_s
    end
    it 'aplyes filter by reason' do
      params = { by_reason: 'vacation' }
      get "/api/v1/absences", params: params, headers: headers
      
      expect(json['data'].count).to eq 1
      expect(json['data'].first.dig('attributes', 'reason')).to eq 'vacation'
    end
    it 'aplyes filter by date range' do
      params = { date_from: Time.current - 3.days, date_to: Time.current - 1.days }
      get "/api/v1/absences", params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
    it 'applyes combination of filters' do
      params = {
        date_from: Time.current - 10.days,
        date_to: Time.current - 9.days,
        by_reason: 'illness',
        by_user: user_2.id
      }
      get "/api/v1/absences", params: params, headers: headers

      expect(json['data'].count).to eq 5
    end
  end

  describe 'holidays filters' do
    it 'aplyes filter by name' do
      params = { by_name: 'inDepend' }
      get "/api/v1/holidays", params: params, headers: headers

      expect(json['data'].count).to eq 1
      expect(json['data'].first.dig('attributes', 'name')).to eq 'Independence day'
    end
    it 'aplyes filter by date range' do
      params = { date_from: Time.current - 2.days, date_to: Time.current - 1.days }
      get "/api/v1/absences", params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
    it 'applyes combination of filters' do
      params = {
        date_from: Time.current - 10.days,
        date_to: Time.current - 5.days,
        by_name: ''
      }
      get "/api/v1/absences", params: params, headers: headers

      expect(json['data'].count).to eq 5
    end
  end

  describe 'projects filters' do
    it 'aplyes filter by name' do
      params = { by_name: 'aFric' }
      get "/api/v1/projects", params: params, headers: headers

      expect(json['data'].count).to eq 1
      expect(json['data'].first.dig('attributes', 'name')).to eq 'Africar'
    end
    it 'aplyes filter by alias' do
      params = { by_alias: 'aFric' }
      get "/api/v1/projects", params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
  end

  describe 'teams filters' do
    it 'aplyes filter by user' do
      params = { by_user: user_1.id }
      get "/api/v1/teams", params: params, headers: headers

      expect(json['data'].count).to eq 1
      expect(json['data'].first.dig('attributes', 'name')).to eq 'C'
    end
    it 'aplyes filter by projects' do
      params = { by_project: project.id }
      get "/api/v1/teams", params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
  end

  describe 'users filters' do
    it 'aplyes filter by name' do
      params = { by_name: 'Rick' }
      get "/api/v1/users", params: params, headers: headers

      expect(json['data'].count).to eq 1
      expect(json['data'].first.dig('attributes', 'name')).to eq 'Rick'
    end
    it 'aplyes filter by active status' do
      params = { active_status: 'true' }
      get "/api/v1/users", params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
  end

  describe 'time entries filters' do
    it 'aplyes filter by details(trello ticket)' do
      params = { with_ticket: '<https://trello.com/path/to/difficult/task>' }
      get "/api/v1/time_entries", params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
    it 'aplyes filter by date range' do
      params = { date_from: Time.current - 2.days, date_to: Time.current - 2.days }
      get "/api/v1/time_entries", params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
    it 'applies filters by users' do
      params = { by_users: [user_1.id, user_2.id] }
      get "/api/v1/time_entries", params: params, headers: headers

      expect(json['data'].count).to eq 3
    end
    it 'applies filters by projects' do
      params = { by_projects: [project.id, projects.last.id] }
      get "/api/v1/time_entries", params: params, headers: headers

      expect(json['data'].count).to eq 3
    end
  end

  describe 'estimation report filters' do
    it 'applies combination of filters' do
      params = {
        date_from: Time.current - 21.days,
        date_to: Time.current - 19.days,
        by_projects: [projects.first.id],
        by_users: [user_2.id],
        with_ticket: '<https://trello.com/path/to/second/difficult/task>',
      }
      get '/api/v1/reports/estimation_reports', params: params, headers: headers

      expect(json['data'].count).to eq 1
    end
  end

end
