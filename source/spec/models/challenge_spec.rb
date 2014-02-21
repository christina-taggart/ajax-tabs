require 'spec_helper'
describe Challenge do
  context ".grouped_by_phase_and_level" do
    let!(:challenge) { FactoryGirl.create :challenge, :level => 1 }
    let!(:challenge2) { FactoryGirl.create :challenge, :level => 2 }
    it "returns a hash of all challenges grouped by challenge and level" do
      results = {
        "#{challenge.phase.name}-#{challenge.level}" => [challenge],
        "#{challenge2.phase.name}-#{challenge2.level}" => [challenge2]
      }
      expect(Challenge.grouped_by_phase_and_level).to eq(results)
    end
  end
  context "associations" do
    it { should belong_to :phase }
  end
end
