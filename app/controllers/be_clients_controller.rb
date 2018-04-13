class BeClientsController < ApplicationController
  before_action :set_be_client, only: [:edit, :update, :show, :destroy]

  def new
    @be_client = BeClient.new
  end

  def create
    @be_client = BeClient.create(be_client_params)
    respond_with @be_client
  end

  def show
    respond_with @be_client
  end

  def update
    @be_client.update(be_client_params)
    respond_with @be_client
  end

  def destroy
    @be_client.destroy
    redirect_to be_clients_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to be_clients_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @be_clients = BeClient.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_be_client
    @be_client = BeClient.find(params[:id])
  end

  def be_client_params
    params.require(:be_client).permit(:client_company_name, :client_cnpj, :client_contact_name, :client_mail, :client_state,
                                      :client_city, :client_tphone, :client_cphone, :client_came_to_us, :shipping_email_id)
  end
end
