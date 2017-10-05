require "rails_helper"

RSpec.describe ParticipantParamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/participant_params").to route_to("participant_params#index")
    end


    it "routes to #show" do
      expect(:get => "/participant_params/1").to route_to("participant_params#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/participant_params").to route_to("participant_params#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/participant_params/1").to route_to("participant_params#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/participant_params/1").to route_to("participant_params#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/participant_params/1").to route_to("participant_params#destroy", :id => "1")
    end

  end
end
