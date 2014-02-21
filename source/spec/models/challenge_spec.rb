require 'spec_helper'
describe Challenge do
  context ".grouped_by_phase_and_level" do
    let!(:challenge) { FactoryGirl.create :challenge }
    it "returns a hash of all challenges grouped by challenge and level" do
      expect(Challenge.grouped_by_phase_and_level).to eq({challenge.phase.name => [challenge] })
    end
  end
  context "associations" do
    it { should belong_to :phase }
  end
end
