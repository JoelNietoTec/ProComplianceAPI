require 'rails_helper'

RSpec.describe "ParamTables", type: :request do
  describe "GET /param_tables" do
    it "works! (now write some real specs)" do
      get param_tables_path
      expect(response).to have_http_status(200)
    end
  end
end
