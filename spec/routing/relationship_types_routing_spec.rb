require "rails_helper"

RSpec.describe RelationshipTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/relationship_types").to route_to("relationship_types#index")
    end


    it "routes to #show" do
      expect(:get => "/relationship_types/1").to route_to("relationship_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/relationship_types").to route_to("relationship_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/relationship_types/1").to route_to("relationship_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/relationship_types/1").to route_to("relationship_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/relationship_types/1").to route_to("relationship_types#destroy", :id => "1")
    end

  end
end
