require "rails_helper"

RSpec.describe ParticipantDocumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/participant_documents").to route_to("participant_documents#index")
    end


    it "routes to #show" do
      expect(:get => "/participant_documents/1").to route_to("participant_documents#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/participant_documents").to route_to("participant_documents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/participant_documents/1").to route_to("participant_documents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/participant_documents/1").to route_to("participant_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/participant_documents/1").to route_to("participant_documents#destroy", :id => "1")
    end

  end
end
