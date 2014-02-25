class UnitsController < ApplicationController
  def show
    unit = Unit.find(params[:id])
    challenges = unit.challenges
    render partial: 'challenges/challenges', locals: { challenges: challenges }
  end
end