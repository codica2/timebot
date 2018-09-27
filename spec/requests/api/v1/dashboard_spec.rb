require 'rails_helper'

RSpec.describe 'Dashboard API', type: :request do
  include ApiDoc::V1::Dashboard::Api

  describe 'GET /dashboard/' do
    include ApiDoc::V1::Dashboard::Index

    it 'Get dashboard info', :dox do
      get '/api/v1/dashboard'

      expect(response).to be_success
      # expect(json['data'].count).to eq(User.count)
    end
  end

end
