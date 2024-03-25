class PlayersController < ApplicationController
  def index
    render json: Player.all
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      render json: @player, status: :created
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

    def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      render json: @player, status: :ok
    else
      render json: @player.errors, status: :unprocessable_entity
    end

    def calculate_scores
      scores = Player.all.map do |player|
        { player_id: player.id, score: player.items.sum(:score) }
      end
    
      sorted_scores = scores.sort_by { |score| score[:score] }.reverse
    
      render json: sorted_scores
    end

  private

  def player_params
    params.require(:player).permit(:username, :email, :password)
  end

  
end