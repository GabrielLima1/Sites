class CompansController < ApplicationController
  before_action :set_compan, only: [:edit, :update, :show, :destroy]

  def new
    @compan = Compan.new
  end

  def create
    @compan = Compan.create(compan_params)
    respond_with @compan
  end

  def show
    respond_with @compan
  end

  def update
    @compan.update(compan_params)
    respond_with @compan
  end

  def destroy
    @compan.destroy
    redirect_to compans_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to compans_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @compans = Compan.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_compan
    @compan = Compan.find(params[:id])
  end

  def compan_params
    params.require(:compan).permit(:compan_fname, :compan_lname, :compan_departament, :ac_email, :ac_password, :compan_id, :accessp_id)
  end
end
