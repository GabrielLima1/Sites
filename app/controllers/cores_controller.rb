class CoresController < ApplicationController
  before_action :set_core, only: [:edit, :update, :show, :destroy]

  def new
    @core = Core.new
  end

  def create
    @core = Core.create(core_params)
    respond_with @core
  end

  def show
    respond_with @core
  end

  def update
    @core.update(core_params)
    respond_with @core
  end

  def destroy
    @core.destroy
    redirect_to cores_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to cores_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @cores = Core.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_core
    @core = Core.find(params[:id])
  end

  def core_params
    params.require(:core).permit(:core_title, :core_description, :archive_id, :menu_id, :user_id)
  end
end
