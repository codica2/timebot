require 'rails_helper'

RSpec.describe 'EstimationReports API' do
  include ApiDoc::V1::Reports::EstimationReports::Api
  let(:admin_user) { create :admin }
  let(:headers) { auth_headers(admin_user) }

  let!(:time_entries) { create_list(:time_entry, 5) }

  describe 'GET /estimation_reports/' do
    include ApiDoc::V1::Reports::EstimationReports::Index
    it 'should generate estimation report', :dox do
      get '/api/v1/reports/estimation_reports', headers: headers

      expect(json['data'].count).to eq 5
    end
  end

end