class UsersController < ApplicationController

  def login
    @user = User.new
    render layout: false
  end

  def resgister
    @user = User.new user_params
    if @user.save
      flash[:success] = "Đăng ký thành công"
      redirect_to login_users_path
    else
      flash[:danger] = 'Đăng ký không thành công'
      redirect_to :back
    end
  end

  def signin
    user = User.find_by user_params
    if user
      log_in user
      redirect_to root_path
    else
      flash[:danger] = 'Sai username hoặc password'
      redirect_to login_users_path
    end
  end

  def show
    get_user
  end

  def logout
    log_out
    redirect_to root_path
  end

  def restaurants
    get_user
  end

  def update
    get_user
    check_user_params
    if !check_user_params
      flash[:danger] = "Password không trùng khớp"
      redirect_to :back
    else
      if @user.update check_user_params
        flash[:success] = "Sửa thành công"
        redirect_to user_path(@user.id)
      else
        flash[:danger] = "Sửa thất bại"
        redirect_to :back
      end
    end

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
