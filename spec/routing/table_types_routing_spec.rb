require "rails_helper"

RSpec.describe TableTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/table_types").to route_to("table_types#index")
    end


    it "routes to #show" do
      expect(:get => "/table_types/1").to route_to("table_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/table_types").to route_to("table_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/table_types/1").to route_to("table_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/table_types/1").to route_to("table_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/table_types/1").to route_to("table_types#destroy", :id => "1")
    end

  end
end
