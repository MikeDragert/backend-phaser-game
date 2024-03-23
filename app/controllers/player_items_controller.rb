class PlayerItemsController < ApplicationController
  def index
    render json: PlayerItem.player_item_item.all
  end

  def create
    player = Player.find(params[:player_id])
    item = Item.find(params[:item_id])
    player_item = PlayerItem.create(player: player, item: item)
    render json: player_item
  end
end
