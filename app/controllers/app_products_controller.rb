class AppProductsController < ApplicationController
  before_action :set_app_product, only: [:edit, :update, :show, :destroy]

  def new
    @app_product = AppProduct.new
  end

  def create
    @app_product = AppProduct.create(app_product_params)
    respond_with @app_product
  end

  def show
    respond_with @app_product
  end

  def update
    @app_product.update(app_product_params)
    respond_with @app_product
  end

  def destroy
    @app_product.destroy
    redirect_to app_products_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to app_products_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    @app_products = AppProduct.paginate(:page => params[:page], :per_page => 10)
                                       .order(created_at: :asc)
  end


  private

  def set_app_product
    @app_product = AppProduct.find(params[:id])
  end

  def app_product_params
    params.require(:app_product).permit(:aproduct_status, :product_id, :app_id)
  end
end
