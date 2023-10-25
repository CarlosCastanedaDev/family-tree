require "rails_helper"

RSpec.describe FilialsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/filials").to route_to("filials#index")
    end

    it "routes to #new" do
      expect(get: "/filials/new").to route_to("filials#new")
    end

    it "routes to #show" do
      expect(get: "/filials/1").to route_to("filials#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/filials/1/edit").to route_to("filials#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/filials").to route_to("filials#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/filials/1").to route_to("filials#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/filials/1").to route_to("filials#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/filials/1").to route_to("filials#destroy", id: "1")
    end
  end
end
