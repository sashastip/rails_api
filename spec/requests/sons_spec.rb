require 'rails_helper'

RSpec.describe "Sons", type: :request do
  describe "GET /sons" do
    it "works! (now write some real specs)" do
      get sons_path
      expect(response).to have_http_status(200)
    end
  end
end
