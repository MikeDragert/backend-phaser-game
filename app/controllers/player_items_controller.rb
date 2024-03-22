class PlayerItemsController < ApplicationController
  def index
    render json: PlayerItem.player_item_item.all
  end
end
