class ServersController < ApplicationController

  before_action :authenticate!

  def create
    server = Server.create(server_params)
    redirect_to profile_path
  end

  def edit
    @server = Server.find(params[:id])
  end

  def show
    @server = Server.params[:id]
  end
  def destroy
    Server.delete(params[:id])
    redirect_to profile_path
  end
  private
  def server_params
    parameters = params.require(:server).permit(:name)
  end
end
