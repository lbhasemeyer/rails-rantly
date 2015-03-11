class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
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


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
