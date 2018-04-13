class CtrlQualitsController < ApplicationController
  before_action :set_ctrl_qualit, only: [:edit, :update, :show, :destroy]

  def new
    @ctrl_qualit = CtrlQualit.new
  end

  def create
    @ctrl_qualit = CtrlQualit.create(ctrl_qualit_params)
    respond_with @ctrl_qualit
  end

  def show
    respond_with @ctrl_qualit
  end

  def update
    @ctrl_qualit.update(ctrl_qualit_params)
    respond_with @ctrl_qualit
  end

  def destroy
    @ctrl_qualit.destroy
    redirect_to ctrl_qualits_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to ctrl_qualits_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @ctrl_qualits = CtrlQualit.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_ctrl_qualit
    @ctrl_qualit = CtrlQualit.find(params[:id])
  end

  def ctrl_qualit_params
    params.require(:ctrl_qualit).permit(:cquality_value, :cquality_date, :sub_cat_ctrl_qualit_id, :product_id)
  end
end
