class SessionsController < ApplicationController
  def create
    @player = Player.find_by(username: params[:username])
    if @player && @player.authenticate(params[:password])
      # Authentication successful
      render json: @player, status: :ok
    else
      # Authentication failed
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end
end
