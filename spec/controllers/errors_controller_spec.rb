require "spec_helper"

RSpec.describe ErrorsController, type: :controller do
  context "when not found" do
    it "renders the expected template" do
      get :not_found
      expect(response).to render_template(:not_found)
    end

    it "is successful" do
      get :not_found
      expect(response).to be_not_found
    end
  end
end
