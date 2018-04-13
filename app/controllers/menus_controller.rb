class MenusController < ApplicationController
  before_action :set_menu, only: [:edit, :update, :show, :destroy]

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.create(menu_params)
    respond_with @menu
  end

  def show
    respond_with @menu
  end

  def update
    @menu.update(menu_params)
    respond_with @menu
  end

  def destroy
    @menu.destroy
    redirect_to menus_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to menus_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @menus = Menu.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:menu_name, :menu_status)
  end
end
