class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :is_admin?

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def is_admin?
    current_user && current_user.admin
  end

  def authorize
    if !current_user
      flash[:alert] = "Please sign in or sign up to view this page."
      redirect_to '/'
    end
  end

  def authorize_admin
    if !is_admin?
      flash[:alert] = "You are not authorized to view this page."
      redirect_to '/'
    end
  end
end
