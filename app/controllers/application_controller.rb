class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorized?
    params[:id].to_i == session[:user_id]
  end

  def require_authorization
    render :file => "public/403" unless authorized?
  end

end
