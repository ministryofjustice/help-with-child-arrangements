require "spec_helper"

RSpec.describe AboutController, type: :controller do
  context "when privacy" do
    it "renders the expected template" do
      get :privacy
      expect(response).to render_template(:privacy)
    end

    it "is successful" do
      get :privacy
      expect(response).to be_successful
    end
  end
end
