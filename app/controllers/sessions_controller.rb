class SessionsController < ApplicationController

  def create
    admin = Admin.find_by_username(params[:username])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to profile_path
    else
      redirect_to root_path
    end
end
  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end

end
