class Admin::BasesController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user, :check_login
  def log_in(user)
    session[:admin_user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:admin_user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  def log_out
    session.delete(:admin_user_id)
    @current_user = nil
  end

  def check_login
    redirect_to login_admin_users_path if !logged_in?
  end
end
