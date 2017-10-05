require 'rails_helper'

RSpec.describe "RelationshipTypes", type: :request do
  describe "GET /relationship_types" do
    it "works! (now write some real specs)" do
      get relationship_types_path
      expect(response).to have_http_status(200)
    end
  end
end
