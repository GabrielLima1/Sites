class SocialsController < ApplicationController
  before_action :set_social, only: [:edit, :update, :show, :destroy]

  def new
    @social = Social.new
  end

  def create
    @social = Social.create(social_params)
    respond_with @social
  end

  def show
    respond_with @social
  end

  def update
    @social.update(social_params)
    respond_with @social
  end

  def destroy
    @social.destroy
    redirect_to socials_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to socials_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @socials = Social.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_social
    @social = Social.find(params[:id])
  end

  def social_params
    params.require(:social).permit(:social_name, :social_link, :social_status, :archive_id)
  end
end
