class Admins::BaseController < ApplicationController

  layout 'admin_application'

  before_action :current_admin

  def index

  end

  protected

  def current_admin
    redirect_to root_path unless current_user.try(:admin?)
  end

end
