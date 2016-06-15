require 'rails_helper'

RSpec.describe "Fathers", type: :request do
  describe "GET /fathers" do
    it "works! (now write some real specs)" do
      get fathers_path
      expect(response).to have_http_status(200)
    end
  end
end
