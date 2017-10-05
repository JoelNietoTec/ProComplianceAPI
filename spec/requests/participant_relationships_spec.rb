require 'rails_helper'

RSpec.describe "ParticipantRelationships", type: :request do
  describe "GET /participant_relationships" do
    it "works! (now write some real specs)" do
      get participant_relationships_path
      expect(response).to have_http_status(200)
    end
  end
end
