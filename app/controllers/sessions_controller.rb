class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      if !session[:forwarding_url].nil?
        redirect_to session[:forwarding_url]
      else
        redirect_to root_path
      end
    end
  end

  def log_in(user)
    session[:user_id] = user.id
  end

end
