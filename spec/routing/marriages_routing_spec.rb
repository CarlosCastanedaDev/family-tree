require "rails_helper"

RSpec.describe MarriagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/marriages").to route_to("marriages#index")
    end

    it "routes to #new" do
      expect(get: "/marriages/new").to route_to("marriages#new")
    end

    it "routes to #show" do
      expect(get: "/marriages/1").to route_to("marriages#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/marriages/1/edit").to route_to("marriages#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/marriages").to route_to("marriages#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/marriages/1").to route_to("marriages#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/marriages/1").to route_to("marriages#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/marriages/1").to route_to("marriages#destroy", id: "1")
    end
  end
end
