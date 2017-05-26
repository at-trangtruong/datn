class Admin::CategoriesController < Admin::BasesController
  layout "admin_layout"
  def index
    @categories = Category.where.not(id: 1)
  end

  def new
    @category = Category.new
  end

  def edit
    get_category
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Thêm thành công"
      redirect_to admin_categories_path
    else
      flash[:danger] = "Thêm thất bại"
      redirect_to :back
    end
  end

  def update
    get_category
    if @category.update category_params
      flash[:success] = "Sửa thành công"
      redirect_to admin_categories_path
    else
      flash[:danger] = "Sửa thất bại"
      redirect_to :back
    end
  end

  def destroy
    get_category
    if params[:id] == 1
      flash[:success] = "Không đưọc xóa"
      redirect_to admin_categories_path
    end
    if @category.remove
      flash[:success] = "Xóa thành công"
      redirect_to admin_categories_path
    else
      flash[:danger] = "Xóa thất bại"
      redirect_to :back
    end
  end

   private
  def get_category
    @category = Category.find params[:id]
  end

  def category_params
    params.require(:category).permit :name
  end
end
