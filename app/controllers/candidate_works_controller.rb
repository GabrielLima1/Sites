class CandidateWorksController < ApplicationController
  before_action :set_candidade_work, only: [:edit, :update, :show, :destroy]

  def new
    @candidade_work = CandidateWork.new
  end

  def create
    @candidade_work = CandidateWork.create(candidade_work_params)
    respond_with @candidade_work
  end

  def show
    respond_with @candidade_work
  end

  def update
    @candidade_work.update(candidade_work_params)
    respond_with @candidade_work
  end

  def destroy
    @candidade_work.destroy
    redirect_to candidade_works_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to candidade_works_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @candidade_works = CandidateWork.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_candidade_work
    @candidade_work = CandidateWork.find(params[:id])
  end

  def candidade_work_params
    params.require(:candidade_work).permit(:cwork_fname, :cwork_lname, :cwork_cep, :cwork_state, :cwork_city, :cwork_burgh,
                                           :cwork_street, :cwork_num, :cwork_complement, :cwork_gender, :cwork_mail,
                                           :cwork_tphone, :cwork_cphone, :work_id)
  end
end
