class EndFactorsController < ApplicationController
  before_action :set_end_factor, only: [:edit, :update, :show, :destroy]

  def new
    @end_factor = EndFactor.new
  end

  def create
    @end_factor = EndFactor.create(end_factor_params)
    respond_with @end_factor
  end

  def show
    respond_with @end_factor
  end

  def update
    @end_factor.update(end_factor_params)
    respond_with @end_factor
  end

  def destroy
    @end_factor.destroy
    redirect_to end_factors_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to end_factors_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @end_factors = EndFactor.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_end_factor
    @end_factor = EndFactor.find(params[:id])
  end

  def end_factor_params
    params.require(:end_factor).permit(:efactory_country, :efactory_state, :efactory_city, :efactory_burgh, :efactory_street,
                                       :efactory_zipcode, :efactory_longitude, :efactory_latitude)
  end
end
