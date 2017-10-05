require 'rails_helper'

RSpec.describe "ParamCategories", type: :request do
  describe "GET /param_categories" do
    it "works! (now write some real specs)" do
      get param_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
