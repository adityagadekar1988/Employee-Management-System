class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    employees_path
  end

  def require_user
    if !user_signed_in?
      flash[:alert] = "Uh-oh, You need to Login to perform that action!!!"
      redirect_to root_path
    end
  end 

end
