class UnitsController < ApplicationController
  def show
    @challenges = Unit.find(params[:id]).challenges
    render :show, :layout => false
  end
end