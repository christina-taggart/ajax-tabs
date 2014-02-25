class ChallengesController < ApplicationController
  def index
    @phase_units = Unit.all_phase_units
    @phase_unit_ids = Unit.all_phase_units_id
  end

  def show
    @unit_challenges = Unit.find(params[:id]).challenges.map{ |challenge| challenge.name }
    respond_to do |format|
      format.json { render json: @unit_challenges }
    end
  end
end
