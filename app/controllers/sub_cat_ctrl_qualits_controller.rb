class SubCatCtrlQualitsController < ApplicationController
  before_action :set_sub_cat_ctrl_qualit, only: [:edit, :update, :show, :destroy]

  def new
    @sub_cat_ctrl_qualit = SubCatCtrlQualit.new
  end

  def create
    @sub_cat_ctrl_qualit = SubCatCtrlQualit.create(sub_cat_ctrl_qualit_params)
    respond_with @sub_cat_ctrl_qualit
  end

  def show
    respond_with @sub_cat_ctrl_qualit
  end

  def update
    @sub_cat_ctrl_qualit.update(sub_cat_ctrl_qualit_params)
    respond_with @sub_cat_ctrl_qualit
  end

  def destroy
    @sub_cat_ctrl_qualit.destroy
    redirect_to sub_cat_ctrl_qualits_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to sub_cat_ctrl_qualits_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @sub_cat_ctrl_qualits = SubCatCtrlQualit.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_sub_cat_ctrl_qualit
    @sub_cat_ctrl_qualit = SubCatCtrlQualit.find(params[:id])
  end

  def sub_cat_ctrl_qualit_params
    params.require(:sub_cat_ctrl_qualit).permit(:sccquality_name, :cat_ctrl_qualit_id)
  end
end
