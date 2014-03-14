require "spec_helper"

describe GmapsController do
  describe "routing" do

    it "routes to #index" do
      get("/gmaps").should route_to("gmaps#index")
    end

    it "routes to #new" do
      get("/gmaps/new").should route_to("gmaps#new")
    end

    it "routes to #show" do
      get("/gmaps/1").should route_to("gmaps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gmaps/1/edit").should route_to("gmaps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gmaps").should route_to("gmaps#create")
    end

    it "routes to #update" do
      put("/gmaps/1").should route_to("gmaps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gmaps/1").should route_to("gmaps#destroy", :id => "1")
    end

  end
end
