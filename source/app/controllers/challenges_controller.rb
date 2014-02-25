class ChallengesController < ApplicationController
  def index
    #@challenges = Challenge.grouped_by_phase_and_level
    @units = Unit.number_and_phase_name

  end
end
