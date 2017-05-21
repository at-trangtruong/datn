class Admin::CategoriesController < ApplicationController
  layout "admin_layout"
  def index
    @categories = Category.all
  end
end
