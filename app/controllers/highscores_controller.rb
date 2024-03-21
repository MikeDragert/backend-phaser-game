class HighscoresController < ApplicationController
  def index
    render json: Highscore.all
  end
end
