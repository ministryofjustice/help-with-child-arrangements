require "spec_helper"

RSpec.describe Deployment, type: :service do
  let(:service) { described_class.new }

  describe ".info" do
    it "creates a deployment info object" do
      expect(described_class).to receive(:new).and_call_original
      described_class.info
    end
  end

  describe "#info" do
    let(:build_date) { "foo" }
    let(:commit_id) { "bar" }
    let(:build_tag) { "baz" }

    it "returns a hash populated with information from ENV vars" do
      ENV["APP_BUILD_DATE"] = build_date
      ENV["APP_GIT_COMMIT"] = commit_id
      ENV["APP_BUILD_TAG"] = build_tag

      expect(service.info).to eq(
        {
          build_date:,
          commit_id:,
          build_tag:,
        },
      )
    end
  end
end
