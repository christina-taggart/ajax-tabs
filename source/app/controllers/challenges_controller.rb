class ChallengesController < ApplicationController
  def index
    # @challenges = Challenge.grouped_by_phase_and_level
    @units = Unit.get_uniq
  end

  def show
    @challenge = Challenge.find(params[:id])
    if request.xhr?
      render :show, :layout => false
    else

    end
  end
end
