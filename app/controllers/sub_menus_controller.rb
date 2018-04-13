class SubMenusController < ApplicationController
  before_action :set_sub_menu, only: [:edit, :update, :show, :destroy]

  def new
    @sub_menu = SubMenu.new
  end

  def create
    @sub_menu = SubMenu.create(sub_menu_params)
    respond_with @sub_menu
  end

  def show
    respond_with @sub_menu
  end

  def update
    @sub_menu.update(sub_menu_params)
    respond_with @sub_menu
  end

  def destroy
    @sub_menu.destroy
    redirect_to sub_menus_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to sub_menus_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @sub_menus = SubMenu.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_sub_menu
    @sub_menu = SubMenu.find(params[:id])
  end

  def sub_menu_params
    params.require(:sub_menu).permit(:smenu_name, :smenu_status, :menu_id)
  end
end
