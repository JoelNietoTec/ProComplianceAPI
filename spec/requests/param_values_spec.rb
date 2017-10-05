require 'rails_helper'

RSpec.describe "ParamValues", type: :request do
  describe "GET /param_values" do
    it "works! (now write some real specs)" do
      get param_values_path
      expect(response).to have_http_status(200)
    end
  end
end
