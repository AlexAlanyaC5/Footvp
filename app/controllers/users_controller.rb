class UsersController < ActionController::Base
  def new
    @user = User.new
    render :new

  end

  def create
  end
end
