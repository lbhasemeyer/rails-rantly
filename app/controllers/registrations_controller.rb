class RegistrationsController < ApplicationController

  skip_before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to rants_path
    else
      render file: 'public/404.html', status: :not_found, layout: false
    end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end

end
