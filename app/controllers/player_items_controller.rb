class PlayerItemsController < ApplicationController
  def index
    render json: PlayerItem.all
  end
end
