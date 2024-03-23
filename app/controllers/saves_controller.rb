class SavesController < ApplicationController
  def index
    render json: Save.all
  end

  def create
    player = Player.find(params[:player_id])
    save = Save.create(player: player)
    render json: save
  end

  def latest_save
    player = Player.find(params[:player_id])
    save = player.saves.last
    render json: save
  end
end
