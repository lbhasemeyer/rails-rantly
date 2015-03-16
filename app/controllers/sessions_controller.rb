class SessionsController < ApplicationController

  skip_before_action :require_login

  def create
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: { signin: { success: true, token: generate_auth_token(user.id) } }
    else
      { signin: { success: false, error: "Invalid Username/Password" } }
    end
  end

  def destroy
    session.clear
    payload = { user_id: nil }
  end

  def generate_auth_token(user)
    payload = { user_id: user }
    JWT.encode(payload, 'secret')
  end

end
