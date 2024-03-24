class PlayerItemsController < ApplicationController
  def index
    if params[:player_save_id] == nil
      render json: PlayerItem.player_item_item.all
    else
      player_items = PlayerItem.player_item_item_for_save(params[:player_save_id])
      render json: player_items
    end
  end


  def create
    player = Player.find(params[:player_id])
    item = Item.find(params[:item_id])
    player_item = PlayerItem.create(player: player, item: item)
    render json: player_item
  end
end
