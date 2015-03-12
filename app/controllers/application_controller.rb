class ApplicationController < ActionController::Base

  before_action :require_login

  def current_user
    User.find_by(id: session[:user_id])
  end

  helper_method :current_user


  private

  def require_login
    unless current_user
      redirect_to sign_in_path
    end
  end

end
