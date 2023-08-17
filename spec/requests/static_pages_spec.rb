RSpec.describe "Static pages" do
  it "shows the homepage" do
    get root_path
    expect(response).to be_successful
    expect(response.body).to include("Help with child arrangements")
    expect(response.body).to include(search_path)
  end

  it "shows the accessibility page" do
    get accessibility_path
    expect(response).to be_successful
    expect(response.body).to include("Accessibility statement for Help with child arrangements")
  end
end
