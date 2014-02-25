class ChallengesController < ApplicationController
  def index
    @phase_units = Unit.all_phase_units
  end
end
