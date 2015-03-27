class SessionsController < ApplicationController

  skip_before_action :require_login

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:authToken] = generate_auth_token(user.id)
      render json: { session: { success: true, token: session[:authToken], user: session[:user_id] } }
    else
      render json: { session: { success: false, error: "Invalid Username/Password" } }
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
