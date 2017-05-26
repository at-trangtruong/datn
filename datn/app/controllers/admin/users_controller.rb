class Admin::UsersController < Admin::BasesController
  skip_before_action :verify_authenticity_token
  skip_before_action :check_login, only: [:login, :signin]

  layout "admin_layout"
  def index
    @users = User.where role: 0
  end

  def login
    @user = User.new
    render layout: false
  end

  def new
    @user = User.new
  end

  def edit
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
        redirect_to admin_users_path
      else
        flash[:danger] = "Sửa thất bại"
        redirect_to :back
      end
    end
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

  def destroy
    get_user
    if @user.destroy
      flash[:success] = "Xóa thành công"
      redirect_to admin_users_path
    else
      flash[:danger] = "Xóa thất bại"
      redirect_to :back
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
