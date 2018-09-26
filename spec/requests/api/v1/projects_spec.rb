require 'rails_helper'

RSpec.describe 'Projects API', type: :request do
  include ApiDoc::V1::Projects::Api

  let!(:projects) { FactoryBot.create_list(:project, 35) }
  let(:team) { create :team }

  let(:valid_params) do
    {
      project: {
        name: Faker::RickAndMorty.character,
        alias: Faker::RickAndMorty.location,
        team_id: team.id
      }
    }
  end

  describe 'GET /projects/' do
    include ApiDoc::V1::Projects::Index

    it 'Get projects', :dox do
      get '/api/v1/projects'
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['data'].count).to eq(PER_PAGE)
    end
  end

  describe 'GET /projects/all' do
    include ApiDoc::V1::Projects::All

    it 'Get all projects', :dox do
      get '/api/v1/projects/all'
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['data'].count).to eq(Project.count)
    end
  end


  describe 'GET /projects/:id' do
    include ApiDoc::V1::Projects::Show

    it 'Show project by id', :dox do
      project = projects.sample
      get "/api/v1/projects/#{project.id}"
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json.dig('data', 'id')).to eq(project.id.to_s)
    end
  end

  describe 'DELETE /projects/:id', :dox do
    include ApiDoc::V1::Projects::Destroy

    it 'Delete project by id', :dox do
      project = projects.sample
      delete "/api/v1/projects/#{project.id}"
      expect(response).to be_success
      expect(Project.find_by(id: project.id)).to eq(nil)
    end
  end

  describe 'POST /projects/', :dox do
    include ApiDoc::V1::Projects::Create

    it 'Create project', :dox do
      projects_number = projects.count
      post('/api/v1/projects/', params: valid_params)
      expect(response).to be_success
      expect(JSON.parse(response.body)).to have_key('data')
      expect(projects_number).to be < Project.count
    end
  end

  describe 'PUT /projects/:id', :dox do
    include ApiDoc::V1::Projects::Update

    it 'Update project' do
      project = projects.sample
      params = { project: { name: project.name.upcase } }
      put("/api/v1/projects/#{project.id}", params: params)
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json.dig('data', 'attributes', 'name')).to eq(project.name.upcase)
    end
  end

end
