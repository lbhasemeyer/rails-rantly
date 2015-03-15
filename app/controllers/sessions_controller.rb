class SessionsController < ApplicationController

  # skip_before_action :require_login

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to rants_path
    else
      render file: 'public/404.html', status: :not_found, layout: false
    end
  end

  def destroy
    session.clear
    redirect_to rants_path
  end

end
