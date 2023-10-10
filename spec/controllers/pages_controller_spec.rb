require "spec_helper"

RSpec.describe PagesController, type: :controller do
  context "when homepage" do
    it "renders the expected template" do
      get :homepage
      expect(response).to render_template(:homepage)
    end

    it "is successful" do
      get :homepage
      expect(response).to be_successful
    end
  end
end
