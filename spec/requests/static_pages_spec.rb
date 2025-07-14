RSpec.describe "Static pages" do
  it "shows the homepage" do
    get root_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the arbitration page" do
    get arbitration_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the collaborative law page" do
    get collaborative_law_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the emotional support page" do
    get emotional_support_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the going to court other parent page" do
    get going_to_court_other_parent_path
    expect(response).to be_successful
    # expect(response.body).to include("The other parent may have told you they will take you to court or you may have received court papers")
    # expect(response.body).to include("Find out how to apply for court order")
  end

  it "shows the going to court page" do
    get going_to_court_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the involving children page" do
    get involving_children_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the lawyer negotiation page" do
    get lawyer_negotiation_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the negotiating between parents page" do
    get negotiating_between_parents_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the parental responsibility page" do
    get parental_responsibility_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the professional mediation page" do
    get professional_mediation_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the professional mediation other parent page" do
    get professional_mediation_other_parent_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the single lawyer page" do
    get single_lawyer_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("This page has been replaced.")
    expect(response.body).to include("https://www.gov.uk/looking-after-children-divorce")
  end

  it "shows the accessibility page" do
    get about_accessibility_path
    expect(response).to be_successful
    expect(response.body).to include("This statement was last updated")
    expect(response.body).not_to include("This page is being replaced soon.")
  end

  it "shows the privacy page" do
    get about_privacy_path
    expect(response).to be_successful
    expect(response.body).to include("Privacy Policy")
    expect(response.body).not_to include("This page is being replaced soon.")
  end

  it "shows the cookies page" do
    get about_cookies_path
    expect(response).to be_successful
    expect(response.body).to include("The cookies we use")
    expect(response.body).not_to include("This page is being replaced soon.")
  end

  it "shows the terms and conditions page" do
    get about_terms_conditions_path
    expect(response).to be_successful
    expect(response.body).to include("By reading this guide you agree to these terms and conditions.")
    expect(response.body).not_to include("This page is being replaced soon.")
  end
end
