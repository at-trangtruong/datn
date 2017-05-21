class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @contact = Contact.new contact_params
    if @contact.save
      flash.now[:success] = "Cảm ơn bạn đã gởi liên hệ, chúng tôi sẽ liên lạc trong thời gian sớm nhất"
    else
      flash.now[:danger] ="Gởi liên hệ thất bại,vui lòng thử lại"
    end
    respond_to do |format|
      format.js
    end
  end

  private
  def contact_params
    params.permit :name, :email, :phone, :content
  end
end
