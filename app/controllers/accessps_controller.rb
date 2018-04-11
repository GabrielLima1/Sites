class AccesspsController < ApplicationController
  before_action :set_accessp, only: [:edit, :update, :show, :destroy]

  def new
    @accessp = Accessp.new
  end

  def create
    @accessp = Accessp.create(accessp_params)
    respond_with @accessp
  end

  def show
    respond_with @accessp
  end

  def update
    @accessp.update(accessp_params)
    respond_with @accessp
  end

  def destroy
    @accessp.destroy
    redirect_to accessps_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to accessps_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @accessps = Accessp.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_accessp
    @accessp = Accessp.find(params[:id])
  end

  def accessp_params
    params.require(:accessp).permit(:accessp_name)
  end
end
