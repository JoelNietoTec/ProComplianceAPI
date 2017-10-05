require "rails_helper"

RSpec.describe ParamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/params").to route_to("params#index")
    end


    it "routes to #show" do
      expect(:get => "/params/1").to route_to("params#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/params").to route_to("params#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/params/1").to route_to("params#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/params/1").to route_to("params#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/params/1").to route_to("params#destroy", :id => "1")
    end

  end
end