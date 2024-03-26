class PlayerSavesController < ApplicationController
  def index
    if params[:player_id] == nil
      render json: PlayerSave.all
    else 
      player_save = PlayerSave.player_last_save( params[:player_id])
      render json: player_save
    end
  end

  def create
    player = Player.find(params[:player_id])
    save_point = params[:save_point]
    player_save = PlayerSave.create(player: player, save_point: save_point)
    render json: player_save
  end

  # ended up not using this...
  def latest_save
    player = Player.find(params[:player_id])
    save = player.saves.last
    render json: save
  end
end
