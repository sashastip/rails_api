require "rails_helper"

RSpec.describe FathersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fathers").to route_to("fathers#index")
    end

    it "routes to #new" do
      expect(:get => "/fathers/new").to route_to("fathers#new")
    end

    it "routes to #show" do
      expect(:get => "/fathers/1").to route_to("fathers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fathers/1/edit").to route_to("fathers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fathers").to route_to("fathers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fathers/1").to route_to("fathers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fathers/1").to route_to("fathers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fathers/1").to route_to("fathers#destroy", :id => "1")
    end

  end
end
