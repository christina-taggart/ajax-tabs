class ChallengesController < ApplicationController
  def index
    @phases = Phase.all
  end

  def show
    challenge = Challenge.find(params[:id])
    render partial: 'challenge_content', locals: { challenge: challenge }
  end
end
