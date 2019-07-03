class UsersController < ApplicationController
  before_action :authorized
  #before the action, call the method authorized

  def new
    @user = User.new
    render :new
  end

  def create
    #byebug
    @users = User.create(user_params)
    redirect_to "/users/#{@users.id}"
  end

  def show
    #byebug
    @user = User.find(params[:id])
  end

  def show
    @users= 
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age, :gender, :is_captain, :team_id, :password, :password_confirmation)
  end
end
