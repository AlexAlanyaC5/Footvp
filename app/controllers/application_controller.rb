class ApplicationController < ActionController::Base

  def logged_in?
    !session[:user_id].nil?
  end
# def (if they are logged in)
#if its nil, then its true (if you put the ! infront of it then its not)

  def authorized
    redirect_to "/login" unless logged_in?
  end
end
  #if/unless logged in, redirect to the login page
