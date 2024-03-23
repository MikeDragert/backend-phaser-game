class PlayersController < ApplicationController
  def index
    render json: Player.all
  end

  def create
    player = Player.new(player_params)  
end
