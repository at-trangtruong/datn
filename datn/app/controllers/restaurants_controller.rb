class RestaurantsController < ApplicationController

  def index
    @highlight_rests = Restaurant.highlight_rests
    @categories = Category.all
    @recommendes = Restaurant.all.order(averaged_rate: :desc).limit(3)
    @restaurants = Restaurant.where(status: 1).paginate page: params[:page], per_page: 9
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  def menu
    get_restaurant

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
      redirect_to user_path(@current_user.id)
    else
      flash[:danger] = "Sửa thất bại"
      redirect_to :back
    end
  end

  def create
    @restaurant = Restaurant.new restaurant_params
    @restaurant.user_id = @current_user.id
    if @restaurant.save
      flash[:success] = "Thêm thành công"
      redirect_to user_path(@current_user.id)
    else
      flash[:danger] = "Thêm thất bại"
      redirect_to :back
    end
  end

  def destroy
    get_restaurant
    if @restaurant.destroy
      flash[:success] = "Xóa thành công"
      redirect_to restaurants_user_path(@current_user.id)
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
