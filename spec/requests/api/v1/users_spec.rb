require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  include ApiDoc::V1::Users::Api

  let!(:users) { FactoryBot.create_list(:user, 35) }

  describe 'GET /users/' do
    include ApiDoc::V1::Users::Index

    it 'Get users', :dox do
      get '/api/v1/users'
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['data'].count).to eq(User.count)
    end
  end

end
