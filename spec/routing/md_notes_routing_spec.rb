require "rails_helper"

RSpec.describe MdNotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/md_notes").to route_to("md_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/md_notes/new").to route_to("md_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/md_notes/1").to route_to("md_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/md_notes/1/edit").to route_to("md_notes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/md_notes").to route_to("md_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/md_notes/1").to route_to("md_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/md_notes/1").to route_to("md_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/md_notes/1").to route_to("md_notes#destroy", :id => "1")
    end

  end
end
