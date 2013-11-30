require "spec_helper"

describe FeedbackMessagesController do
  describe "routing" do

    it "routes to #index" do
      get("/feedback_messages").should route_to("feedback_messages#index")
    end

    it "routes to #new" do
      get("/feedback_messages/new").should route_to("feedback_messages#new")
    end

    it "routes to #show" do
      get("/feedback_messages/1").should route_to("feedback_messages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/feedback_messages/1/edit").should route_to("feedback_messages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/feedback_messages").should route_to("feedback_messages#create")
    end

    it "routes to #update" do
      put("/feedback_messages/1").should route_to("feedback_messages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/feedback_messages/1").should route_to("feedback_messages#destroy", :id => "1")
    end

  end
end
