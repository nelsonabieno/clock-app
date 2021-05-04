require "rails_helper"

RSpec.describe UsersController do
  describe "GET create" do
    it "create a new user" do
      user = User.create
      post :create
      expect(assigns(:user)).to eq([user])
    end

    it "renders the login template" do
      get :login
      expect(response).to render_template("login")
    end
  end
end