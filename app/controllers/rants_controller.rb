class RantsController < ApplicationController

  skip_before_action :require_login, only: [:index]

  def index
    if params[:find].present?
      @filtered = Rant.where("lower(title) like ? OR lower(body) like ?", "%#{ params[:find].downcase }%", "%#{ params[:find].downcase }%")
      render json: @filtered
    else
      render json: Rant.all
    end
  end

  def show
    @rant = Rant.find(params[:id])
    render json: @rant
  end

  def create
    if current_user
      @rant = Rant.new(rant_params)
      @rant.user_id = current_user.id
      if @rant.save
        render json: @rant, status: :created, location: @rant
      else
        render json: @rant.errors, status: :unprocessable_entity
      end
    end
  end

  def update
    @rant = Rant.find(params[:id])
    if current_user.id.to_s == @rant.user_id
      if @rant.update(rant_params)
        head :no_content
      else
        render json: @rant.errors, status: :unprocessable_entity
      end
    else
      render json: @rant.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rant = Rant.find(params[:id])
    if current_user.id.to_s == @rant.user_id
      @rant.destroy
      head :no_content
    else
      render json: @rant.errors, status: :unprocessable_entity
    end
  end


  private

  def rant_params
    params.require(:rant).permit(:title, :body, :created_at, :user_id)
  end

end
