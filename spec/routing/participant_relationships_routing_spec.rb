require "rails_helper"

RSpec.describe ParticipantRelationshipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/participant_relationships").to route_to("participant_relationships#index")
    end


    it "routes to #show" do
      expect(:get => "/participant_relationships/1").to route_to("participant_relationships#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/participant_relationships").to route_to("participant_relationships#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/participant_relationships/1").to route_to("participant_relationships#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/participant_relationships/1").to route_to("participant_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/participant_relationships/1").to route_to("participant_relationships#destroy", :id => "1")
    end

  end
end
