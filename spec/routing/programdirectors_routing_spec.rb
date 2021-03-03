require "rails_helper"

RSpec.describe ProgramdirectorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/programdirectors").to route_to("programdirectors#index")
    end

    it "routes to #new" do
      expect(get: "/programdirectors/new").to route_to("programdirectors#new")
    end

    it "routes to #show" do
      expect(get: "/programdirectors/1").to route_to("programdirectors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/programdirectors/1/edit").to route_to("programdirectors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/programdirectors").to route_to("programdirectors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/programdirectors/1").to route_to("programdirectors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/programdirectors/1").to route_to("programdirectors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/programdirectors/1").to route_to("programdirectors#destroy", id: "1")
    end
  end
end
