class CatCtrlQualitsController < ApplicationController
  before_action :set_cat_ctrl_qualit, only: [:edit, :update, :show, :destroy]

  def new
    @cat_ctrl_qualit = CatCtrlQualit.new
  end

  def create
    @cat_ctrl_qualit = CatCtrlQualit.create(cat_ctrl_qualit_params)
    respond_with @cat_ctrl_qualit
  end

  def show
    respond_with @cat_ctrl_qualit
  end

  def update
    @cat_ctrl_qualit.update(cat_ctrl_qualit_params)
    respond_with @cat_ctrl_qualit
  end

  def destroy
    @cat_ctrl_qualit.destroy
    redirect_to cat_ctrl_qualits_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to cat_ctrl_qualits_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @cat_ctrl_qualits = CatCtrlQualit.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_cat_ctrl_qualit
    @cat_ctrl_qualit = CatCtrlQualit.find(params[:id])
  end

  def cat_ctrl_qualit_params
    params.require(:cat_ctrl_qualit).permit(:ccquality_name)
  end
end
