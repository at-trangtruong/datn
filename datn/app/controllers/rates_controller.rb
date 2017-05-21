class RatesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    if @current_user.nil?
      flash.now[:danger] = "Vui lòng đăng nhập để đánh giá"
    else
      rate = rate_params.dup
      rate[:user_id] = @current_user.id
      @rate = Rate.find_by restaurant_id: rate[:restaurant_id], user_id: rate[:user_id]
      if @rate.nil?
        @rate = Rate.create rate
      else
        @rate.update rate: rate[:rate]
      end
      flash.now[:success] = "Cảm ơn bạn đã đánh giá"
    end
    respond_to do |format|
      format.js
    end
  end

  def index

  end

  private
  def rate_params
    params.permit :restaurant_id, :rate
  end
end
