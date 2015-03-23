class UsersController < ApplicationController

  skip_before_action :require_login, only: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      session[:authToken] = generate_auth_token(@user.id)
      render json: { session: { success: true, token: session[:authToken] } }
    else
      render json: { session: { success: false, error: "Please try again" } }
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:first_name, :last_name, :email))
      redirect_to users_path
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    head :no_content
  end

  def generate_auth_token(user)
    payload = { user_id: user }
    JWT.encode(payload, 'secret')
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
