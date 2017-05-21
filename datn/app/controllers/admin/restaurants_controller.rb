class Admin::RestaurantsController < ApplicationController
  layout "admin_layout"
  skip_before_action :verify_authenticity_token
  def home

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

  private
  def get_restaurant
    @restaurant = Restaurant.find params[:id]
  end
end
