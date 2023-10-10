RSpec.describe "Static pages" do
  it "shows the homepage" do
    get root_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
  end

  it "shows the accessibility page" do
    get about_accessibility_path
    expect(response).to be_successful
    expect(response.body).to include("About the accessibility of this online service")
  end

  it "shows the privacy page" do
    get about_privacy_path
    expect(response).to be_successful
    expect(response.body).to include("Privacy Policy")
  end

  it "shows the cookies page" do
    get about_cookies_path
    expect(response).to be_successful
    expect(response.body).to include("The cookies we use")
  end

  it "shows the terms and conditions page" do
    get about_terms_conditions_path
    expect(response).to be_successful
    expect(response.body).to include("By reading this guide you agree to these terms and conditions.")
  end
end
