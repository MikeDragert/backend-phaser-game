class PlayerAchievementsController < ApplicationController
  def index
    render json: PlayerAchievement.all
  end
end
