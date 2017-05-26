class Admin::RestaurantsController < Admin::BasesController
  layout "admin_layout"
  skip_before_action :verify_authenticity_token
  def home

  end

  def new
    @restaurant = Restaurant.new
    @categories = Category.all
    @districts = District.all
  end

  def edit
    get_restaurant
    @categories = Category.all
    @districts = District.all
  end

  def update
    get_restaurant
    if @restaurant.update restaurant_params
      flash[:success] = "Sửa thành công"
      redirect_to admin_restaurants_path
    else
      flash[:danger] = "Sửa thất bại"
      redirect_to :back
    end
  end

  def index
    @restaurants = Restaurant.all.order(status: :asc)
  end

  def set_active
    get_restaurant
    @restaurant.update status: params[:status]
    respond_to do |format|
      format.js
    end
  end

  def set_highlight
    get_restaurant
    @restaurant.update highlight: params[:highlight]
    respond_to do |format|
      format.js
    end
  end

  def create
    @restaurant = Restaurant.new restaurant_params
    @restaurant.user_id = @current_user.id
    if @restaurant.save
      flash[:success] = "Thêm thành công"
      redirect_to admin_restaurants_path
    else
      flash[:danger] = "Thêm thất bại"
      redirect_to :back
    end
  end

  def destroy
    get_restaurant
    if @restaurant.destroy
      flash[:success] = "Xóa thành công"
      redirect_to admin_restaurants_path
    else
      flash[:danger] = "Xóa thất bại"
      redirect_to :back
    end
  end

  private
  def get_restaurant
    @restaurant = Restaurant.find params[:id]
  end
  def restaurant_params
    params.require(:restaurant).permit :name, :category_id, :district_id, :address, :hotline, :picture, :description, :detail
  end
end
