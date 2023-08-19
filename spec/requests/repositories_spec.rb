require 'rails_helper'

RSpec.describe "Repositories", type: :request do
  describe "GET /search" do
    it "returns http success" do
      get "/repositories/search"
      expect(response).to have_http_status(:success)
    end
  end

end
