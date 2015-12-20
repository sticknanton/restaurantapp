module ApplicationHelper
  def current_user
    if session[:admin_id]
      @current_user = @current_user || Admin.find(session[:admin_id])
    end
  end

  def authenticate!
    redirect_to log_in_path unless current_user
  end
end
