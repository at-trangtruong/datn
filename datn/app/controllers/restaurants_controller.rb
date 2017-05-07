class RestaurantsController < ApplicationController
  
  def index
    @highlight_rests = Restaurant.highlight_rests
    @categories = Category.all
    @restaurants = Restaurant.where(status: 1).paginate page: params[:page], per_page: 9
  end

  def show
        @highlight_rests = Restaurant.highlight_rests
    @categories = Category.all
    @restaurants = Restaurant.where(status: 1).paginate page: params[:page], per_page: 9
    render "new"
  end
end
