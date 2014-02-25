class ChallengesController < ApplicationController
  def index
    # @challenges = Challenge.grouped_by_phase_and_level
    @units = Unit.get_uniq
  end

  def show
    p "shown"
    @challenge = Challenge.find(params[:id])
    render :show, :layout => false
  end
end
