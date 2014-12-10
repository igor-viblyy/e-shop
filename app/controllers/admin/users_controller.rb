class Admin::UsersController < Admin::BaseController

  add_breadcrumb "Users", :admins_users_path

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def destroy

  end

  protected

  def params_user

  end
end
