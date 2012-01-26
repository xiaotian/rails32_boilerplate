require "spec_helper"

describe FooBarsController do
  describe "routing" do

    it "routes to #index" do
      get("/foo_bars").should route_to("foo_bars#index")
    end

    it "routes to #new" do
      get("/foo_bars/new").should route_to("foo_bars#new")
    end

    it "routes to #show" do
      get("/foo_bars/1").should route_to("foo_bars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foo_bars/1/edit").should route_to("foo_bars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foo_bars").should route_to("foo_bars#create")
    end

    it "routes to #update" do
      put("/foo_bars/1").should route_to("foo_bars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foo_bars/1").should route_to("foo_bars#destroy", :id => "1")
    end

  end
end
