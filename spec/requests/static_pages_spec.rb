RSpec.describe "Static pages" do
  it "shows the homepage" do
    get root_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
  end

  it "shows the accessibility page" do
    get about_accessibility_path
    expect(response).to be_successful
    expect(response.body).to include("Accessibility statement for Help with child arrangements")
  end
end
