class ShippingEmailsController < ApplicationController
  before_action :set_shipping_email, only: [:edit, :update, :show, :destroy]

  def new
    @shipping_email = ShippingEmail.new
  end

  def create
    @shipping_email = ShippingEmail.create(shipping_email_params)
    respond_with @shipping_email
  end

  def show
    respond_with @shipping_email
  end

  def update
    @shipping_email.update(shipping_email_params)
    respond_with @shipping_email
  end

  def destroy
    @shipping_email.destroy
    redirect_to shipping_emails_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to shipping_emails_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @shipping_emails = ShippingEmail.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_shipping_email
    @shipping_email = ShippingEmail.find(params[:id])
  end

  def shipping_email_params
    params.require(:shipping_email).permit(:semail_port, :semail_host, :semail_ishtml, :semail_mailer, :semail_smtp_secure,
                                           :semail_user, :semail_pass, :user_id)
  end
end
