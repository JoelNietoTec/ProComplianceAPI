require "rails_helper"

RSpec.describe ParamCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/param_categories").to route_to("param_categories#index")
    end


    it "routes to #show" do
      expect(:get => "/param_categories/1").to route_to("param_categories#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/param_categories").to route_to("param_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/param_categories/1").to route_to("param_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/param_categories/1").to route_to("param_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/param_categories/1").to route_to("param_categories#destroy", :id => "1")
    end

  end
end
