class TypeArchivesController < ApplicationController
  before_action :set_type_archive, only: [:edit, :update, :show, :destroy]

  def new
    @type_archive = TypeArchive.new
  end

  def create
    @type_archive = TypeArchive.create(type_archive_params)
    respond_with @type_archive
  end

  def show
    respond_with @type_archive
  end

  def update
    @type_archive.update(type_archive_params)
    respond_with @type_archive
  end

  def destroy
    @type_archive.destroy
    redirect_to type_archives_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to type_archives_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @type_archives = TypeArchive.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_type_archive
    @type_archive = TypeArchive.find(params[:id])
  end

  def type_archive_params
    params.require(:type_archive).permit(:tarchive_name)
  end
end
