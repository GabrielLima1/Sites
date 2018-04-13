class AppsController < ApplicationController
  before_action :set_app, only: [:edit, :update, :show, :destroy]

  def new
    @app = App.new
  end

  def create
    @app = App.create(app_params)
    respond_with @app
  end

  def show
    respond_with @app
  end

  def update
    @app.update(app_params)
    respond_with @app
  end

  def destroy
    @app.destroy
    redirect_to apps_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to apps_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @apps = App.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_app
    @app = App.find(params[:id])
  end

  def app_params
    params.require(:app).permit(:app_name)
  end
end
