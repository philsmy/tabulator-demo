require 'rails_helper'

RSpec.describe "TabulaTests", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tabula_test/index"
      expect(response).to have_http_status(:success)
    end
  end

end
