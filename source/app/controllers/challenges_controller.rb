class ChallengesController < ApplicationController
  def index
    @phases = Challenge.grouped_by_phase_and_level
  end

  def get_challenges_by_phase
    phase_units = params[:key].split('-')
    phase = Phase.find_by_name(phase_units[0])
    unit = Unit.find_by_phase_id_and_number( phase.id, phase_units[1])
    @challenges = Challenge.where(unit_id: unit.id)
    render :partial => 'challenges', locals: { challenges: @challenges }
  end
end
