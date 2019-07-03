class SessionsController < ApplicationController

  def new
  end

  def create
    #byebug
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      #method called session,
      # set a key inside(user_id) IF they are logged in, they don't need to go back to login.
      #is equals to user.id
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to "/login"
  end
  

end
