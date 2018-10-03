require 'rails_helper'

RSpec.describe 'Dashboard API', type: :request do
  include ApiDoc::V1::Dashboard::Api

  let(:user) { create :admin }
  let(:headers) { auth_headers(user) }

  describe 'GET /dashboard/' do
    include ApiDoc::V1::Dashboard::Index

    it 'Get dashboard info', :dox do
      get '/api/v1/dashboard', headers: headers

      expect(response).to be_success
    end
  end

end
