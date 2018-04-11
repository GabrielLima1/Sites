class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  respond_to :html
  # before_action :authenticate_user!
  # WillPaginate.per_page = 5

end
