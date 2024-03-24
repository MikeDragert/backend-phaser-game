class HighscoresController < ApplicationController
  def index
    highscores = Highscore.order(score: :desc)
    render json: highscores
  end
end
