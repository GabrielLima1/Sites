class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :show, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    respond_with @product
  end

  def show
    respond_with @product
  end

  def update
    @product.update(product_params)
    respond_with @product
  end

  def destroy
    @product.destroy
    redirect_to products_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to products_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @products = Product.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:product_name, :product_description, :product_status, :archive_id)
  end
end
