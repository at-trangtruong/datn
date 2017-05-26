class Admin::MenusController < Admin::BasesController
  layout "admin_layout"
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
    @restaurants = Restaurant.all
  end

  def edit
    get_menu
    @restaurants = Restaurant.all
  end

  def create
    @menu = Menu.new menu_params
    if @menu.save
      flash[:success] = "Thêm thành công"
      redirect_to admin_menus_path
    else
      flash[:danger] = "Thêm thất bại"
      redirect_to :back
    end
  end

  def update
    get_menu
    if @menu.update menu_params
      flash[:success] = "Sửa thành công"
      redirect_to admin_menus_path
    else
      flash[:danger] = "Sửa thất bại"
      redirect_to :back
    end
  end

  def destroy
    get_menu
    if @menu.destroy
      flash[:success] = "Xóa thành công"
      redirect_to admin_menus_path
    else
      flash[:danger] = "Xóa thất bại"
      redirect_to :back
    end
  end

  private
  def get_menu
    @menu = Menu.find params[:id]
  end

  def menu_params
    params.require(:menu).permit :name, :cost, :restaurant_id, :picture
  end
end
