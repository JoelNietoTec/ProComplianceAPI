require 'rails_helper'

RSpec.describe "ParticipantParams", type: :request do
  describe "GET /participant_params" do
    it "works! (now write some real specs)" do
      get participant_params_path
      expect(response).to have_http_status(200)
    end
  end
end
