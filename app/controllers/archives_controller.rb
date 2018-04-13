class ArchivesController < ArchivelicationController
  before_action :set_archive, only: [:edit, :update, :show, :destroy]

  def new
    @archive = Archive.new
  end

  def create
    @archive = Archive.create(archive_params)
    respond_with @archive
  end

  def show
    respond_with @archive
  end

  def update
    @archive.update(archive_params)
    respond_with @archive
  end

  def destroy
    @archive.destroy
    redirect_to archives_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to archives_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @archives = Archive.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_archive
    @archive = Archive.find(params[:id])
  end

  def archive_params
    params.require(:archive).permit(:archive_name, :archive_date, :archive_url, :type_archive_id)
  end
end
