class GamesController < ApplicationController
  def new
    @game = Game.new
    render :new
  end

  def create
    #byebug
    @games = Game.create(user_params)
    redirect_to "/games/#{@games.id}"
  end

  def show
    #byebug
    @game = Game.find(params[:id])
  end

  private

  def user_params
    params.require(:game).permit(:name, :time, :location, team_ids:[])
  end

end
