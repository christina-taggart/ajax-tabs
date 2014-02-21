class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.grouped_by_phase_and_level
  end
end
