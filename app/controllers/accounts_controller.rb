class AccountsController < ApplicationController
  before_action :set_account, only: [:edit, :update, :show, :destroy]

  def new
    @account = Account.new
  end

  def create
    fnome = params["account"]["account_fname"]
    lnome = params["account"]["account_lname"]
    email = params["account"]["ac_email"]
    password = params["account"]["ac_password"]
    #user = User.new(name: nome, email: email, password: password)
    #user.save
    User.create(user_fname: fnome, user_lname: lnome, email: email, password: password)
    binding.pry
    @account = Account.create(account_params)
    respond_with @account
  end

  def show
    respond_with @account
  end

  def update
    @account.update(account_params)
    respond_with @account
  end

  def destroy
    @account.destroy
    redirect_to accounts_path, alert: "Documento deletado com Sucesso"
  rescue
    redirect_to accounts_path, alert: "Não foi possivel deletar o Documento!"
  end

  def index
    # if current_user.kind == "manager"
      @accounts = Account.paginate(:page => params[:page], :per_page => 10)
                          .order(created_at: :asc)
    # end
  end


  private

  def set_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:account_fname, :account_lname, :account_departament, :ac_email, :ac_password, :compan_id, :accessp_id)
  end
end
