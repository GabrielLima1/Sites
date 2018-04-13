class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :update, :show, :destroy]

  def new
    @work = Work.new
  end

  def create
    @work = Work.create(work_params)
    respond_with @work
  end

  def show
    respond_with @work
  end

  def update
    @work.update(work_params)
    respond_with @work
  end

  def destroy
    @work.destroy
    redirect_to works_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to works_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @works = Work.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:work_title, :work_description, :end_factor_id, :user_id)
  end
end
