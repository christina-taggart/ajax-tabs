class ChallengesController < ApplicationController
  def index
    @phase_units = Unit.all_phase_units
    @phase_unit_ids = Unit.all_phase_units_id
  end

  def show
    @unit_challenges = Unit.find(params[:id]).challenges.map{ |challenge| [challenge.name, challenge.id] }
    respond_to do |format|
      format.json { render json: @unit_challenges }
    end
  end

  def content
    @challenge = Challenge.find(params[:id])
    @challenge = [@challenge.image, @challenge.description, @challenge.id]
    respond_to do |format|
      format.json { render json: @challenge }
    end
  end

end
