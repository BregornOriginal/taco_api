require "rails_helper"

RSpec.describe TacosController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    it "creates a new taco" do
      expect {
        post :create, params: { taco: { meat: "Chicken", rice: "false", salsa: "false", notes: "Roast" } }
      }.to change(Taco, :count).by(1)
    end

    it "returns a created response" do
      post :create, params: { taco: { meat: "Chicken", rice: "false", salsa: "false", notes: "Roast" } }
      expect(response).to have_http_status(:created)
    end
  end
end
