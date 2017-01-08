require 'rails_helper'

RSpec.describe "MdNotes", type: :request do
  describe "GET /md_notes" do
    it "works! (now write some real specs)" do
      get md_notes_path
      expect(response).to have_http_status(200)
    end
  end
end
