class ContactUsController < ApplicationController
  before_action :set_contact_us, only: [:edit, :update, :show, :destroy]

  def new
    @contact_us = ContactUs.new
  end

  def create
    @contact_us = ContactUs.create(contact_us_params)
    respond_with @contact_us
  end

  def show
    respond_with @contact_us
  end

  def update
    @contact_us.update(contact_us_params)
    respond_with @contact_us
  end

  def destroy
    @contact_us.destroy
    redirect_to contact_uss_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to contact_uss_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @contact_uss = ContactUs.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_contact_us
    @contact_us = ContactUs.find(params[:id])
  end

  def contact_us_params
    params.require(:contact_us).permit(:contact_fname, :contact_lname, :contact_mail, :contact_tphone, :contact_cphone,
                                       :contact_city, :contact_state, :contact_message, :shipping_email_id)
  end
end
