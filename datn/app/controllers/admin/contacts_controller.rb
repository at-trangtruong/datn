class Admin::ContactsController < Admin::BasesController
  layout "admin_layout"

  def index
    @contacts = Contact.all
  end

  def destroy
    @contact = Contact.find params[:id]
    if @contact.destroy
      flash[:success] = "Xóa thành công"
      redirect_to admin_contacts_path
    else
      flash[:danger] = "Xóa thất bại"
      redirect_to :back
    end
  end
end
