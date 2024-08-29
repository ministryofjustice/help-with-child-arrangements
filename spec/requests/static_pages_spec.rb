RSpec.describe "Static pages" do
  it "shows the homepage" do
    get root_path
    expect(response).to be_successful
    expect(response.body).to include("Get help with child arrangements")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the collaborative law page" do
    get collaborative_law_path
    expect(response).to be_successful
    expect(response.body).to include("Collaborative lawyers work with you and the other parent to resolve your issues")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the emotional support page" do
    get emotional_support_path
    expect(response).to be_successful
    expect(response.body).to include("Emotional support can help you get through the stress of making child arrangements")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the going to court other parent page" do
    get going_to_court_other_parent_path
    expect(response).to be_successful
    expect(response.body).to include("The other parent may have told you they will take you to court or you may have received court papers")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the going to court page" do
    get going_to_court_path
    expect(response).to be_successful
    expect(response.body).to include("You'll need to go to court if you've tried other suitable options and still can't agree")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the involving children page" do
    get involving_children_path
    expect(response).to be_successful
    expect(response.body).to include("The needs of your children should come first when you make child arrangements")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the lawyer negotiation page" do
    get lawyer_negotiation_path
    expect(response).to be_successful
    expect(response.body).to include("You don't have to deal directly with the other parent if you choose this option")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the negotiating between parents page" do
    get negotiating_between_parents_path
    expect(response).to be_successful
    expect(response.body).to include("If there are no safety concerns, the cheapest and easiest way to make arrangements")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the parental responsibility page" do
    get parental_responsibility_path
    expect(response).to be_successful
    expect(response.body).to include("Parental responsibility is a term that means you have legal rights")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the professional mediation page" do
    get professional_mediation_path
    expect(response).to be_successful
    expect(response.body).to include("Mediation sessions are run by professionals who help you try to reach an agreement")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the professional mediation other parent page" do
    get professional_mediation_other_parent_path
    puts professional_mediation_other_parent_path
    expect(response).to be_successful
    expect(response.body).to include("You may have been contacted by a mediator or the other parent may have asked you to try mediation")
    expect(response.body).to include("Help us improve our website")
  end

  it "shows the single lawyer page" do
    get single_lawyer_path
    expect(response).to be_successful
    expect(response.body).to include("One lawyer will work with you and the other parent to manage your separation together without going to court")
    expect(response.body).to include("Help us improve our website")
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
