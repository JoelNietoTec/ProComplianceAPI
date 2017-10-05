require "rails_helper"

RSpec.describe ParamMatricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/param_matrices").to route_to("param_matrices#index")
    end


    it "routes to #show" do
      expect(:get => "/param_matrices/1").to route_to("param_matrices#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/param_matrices").to route_to("param_matrices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/param_matrices/1").to route_to("param_matrices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/param_matrices/1").to route_to("param_matrices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/param_matrices/1").to route_to("param_matrices#destroy", :id => "1")
    end

  end
end
