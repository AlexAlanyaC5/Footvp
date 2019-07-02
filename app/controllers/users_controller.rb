class UsersController < ActionController::Base
  def new
    @user = User.new
    render :new
  end

  def create
    @users= User.create(user_params)

    redirect_to "/users/#{@users.id}"
  end

  def show
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :age, :gender, :is_captain, :team_id)
  end
end
