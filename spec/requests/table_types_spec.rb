require 'rails_helper'

RSpec.describe "TableTypes", type: :request do
  describe "GET /table_types" do
    it "works! (now write some real specs)" do
      get table_types_path
      expect(response).to have_http_status(200)
    end
  end
end
