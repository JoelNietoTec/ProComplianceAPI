require 'rails_helper'

RSpec.describe "ParticipantDocuments", type: :request do
  describe "GET /participant_documents" do
    it "works! (now write some real specs)" do
      get participant_documents_path
      expect(response).to have_http_status(200)
    end
  end
end
