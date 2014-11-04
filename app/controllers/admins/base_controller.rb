class Admins::BaseController < ApplicationController

  layout 'admin_application'

  before_action :authenticate_user!
  before_action :current_admin

  add_breadcrumb "Dashboard", :admins_root_path

  def index

  end

  protected

  def current_admin
    redirect_to root_path unless current_user.try(:admin?)
  end

end
