require "rails_helper"

RSpec.describe ParamValuesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/param_values").to route_to("param_values#index")
    end


    it "routes to #show" do
      expect(:get => "/param_values/1").to route_to("param_values#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/param_values").to route_to("param_values#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/param_values/1").to route_to("param_values#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/param_values/1").to route_to("param_values#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/param_values/1").to route_to("param_values#destroy", :id => "1")
    end

  end
end
