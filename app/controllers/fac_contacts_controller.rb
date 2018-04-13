class FacContactsController < ApplicationController
  before_action :set_fac_contact, only: [:edit, :update, :show, :destroy]

  def new
    @fac_contact = FacContact.new
  end

  def create
    @fac_contact = FacContact.create(fac_contact_params)
    respond_with @fac_contact
  end

  def show
    respond_with @fac_contact
  end

  def update
    @fac_contact.update(fac_contact_params)
    respond_with @fac_contact
  end

  def destroy
    @fac_contact.destroy
    redirect_to fac_contacts_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to fac_contacts_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @fac_contacts = FacContact.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_fac_contact
    @fac_contact = FacContact.find(params[:id])
  end

  def fac_contact_params
    params.require(:fac_contact).permit(:fcontact_name, :fcontact_mail, :fcontact_tel, :fcontact_cel, :fcontact_hours,
                                        :fcontact_status, :archive_id, :end_factor_id)
  end
end
