require "rails_helper"

RSpec.describe ParamTablesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/param_tables").to route_to("param_tables#index")
    end


    it "routes to #show" do
      expect(:get => "/param_tables/1").to route_to("param_tables#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/param_tables").to route_to("param_tables#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/param_tables/1").to route_to("param_tables#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/param_tables/1").to route_to("param_tables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/param_tables/1").to route_to("param_tables#destroy", :id => "1")
    end

  end
end
