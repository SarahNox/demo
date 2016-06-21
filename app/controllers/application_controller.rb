class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user, :destroy
  

  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def destroy
    log_out if logged_in?
    redirect_to login_url
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  private
  
  def admin_authorize
    redirect_to root_path unless current_user.try(:admin?)
  end
end
