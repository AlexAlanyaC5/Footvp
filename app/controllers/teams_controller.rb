class TeamsController < ActionController::Base
  def new
    render :new  #/views/teams/new.html.erb
  end

  def create
    @teams = Team.create name:params[:name]

    redirect_to "/teams"
    #params is a source code params[:name]
  end

  def index
    @teams = Team.all
    render :index
  end

  def show

  end
end
