require "rails_helper"

RSpec.describe ParamSubValuesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/param_sub_values").to route_to("param_sub_values#index")
    end


    it "routes to #show" do
      expect(:get => "/param_sub_values/1").to route_to("param_sub_values#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/param_sub_values").to route_to("param_sub_values#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/param_sub_values/1").to route_to("param_sub_values#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/param_sub_values/1").to route_to("param_sub_values#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/param_sub_values/1").to route_to("param_sub_values#destroy", :id => "1")
    end

  end
end
