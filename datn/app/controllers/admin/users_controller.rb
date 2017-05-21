class Admin::UsersController < ApplicationController

  def login
    @user = User.new
    render layout: false
  end

  def signin
    user = User.find_by user_params
    if user && user.role == 1
      log_in user
      redirect_to admin_home_index_path
    else
      flash[:danger] = 'Sai username hoặc password'
      redirect_to :back
    end
  end

  def logout
    log_out
    redirect_to root_path
  end
  private
  def user_params
    params.require(:user).permit :username, :password, :fullname, :avatar
  end

  def get_user
    @user = User.find params[:id]
  end

  def check_user_params
    user = user_params.dup
    if user[:password] != params[:user][:re_password]
      return false
    else
      user[:fullname] = @user.fullname if user[:fullname].blank?
      user[:password] = @user.password if user[:password].blank?
      user[:avatar] = @user.avatar if user[:avatar].blank?
      user
    end
  end
end
