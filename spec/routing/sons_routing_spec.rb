require "rails_helper"

RSpec.describe SonsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sons").to route_to("sons#index")
    end

    it "routes to #new" do
      expect(:get => "/sons/new").to route_to("sons#new")
    end

    it "routes to #show" do
      expect(:get => "/sons/1").to route_to("sons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sons/1/edit").to route_to("sons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sons").to route_to("sons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sons/1").to route_to("sons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sons/1").to route_to("sons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sons/1").to route_to("sons#destroy", :id => "1")
    end

  end
end
