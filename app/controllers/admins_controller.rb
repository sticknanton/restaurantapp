class AdminsController < ApplicationController

  def index
    redirect_to log_in_path
  end

  def new
    @admin = Admin.new
  end

  def create
    Admin.create( admin_params )
    redirect_to root_path
  end

  def profile
    current_user
    @menuitems = MenuItem.all
    @menuitem = MenuItem.new
    @servers = Server.all
    @server = Server.new
  end

  def log_in

  end

  private
  def admin_params
    params.require(:admin).permit(:username, :password)
  end

end
