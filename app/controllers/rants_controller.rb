class RantsController < ApplicationController

  skip_before_action :require_login, only: [:index]

  def index
    if params[:find].present?
      @filtered = Rant.where("title like ? OR body like ?", "%#{ params[:find] }%", "%#{ params[:find] }%")
      render json: @filtered
    else
      @rants = Rant.all
      render json: @rants
    end
  end

  def show
    @rant = Rant.find(params[:id])
    render json: @rant
  end

  def create
    @rant = Rant.new(rant_params)
    if @rant.save
      render json: @rant, status: :created, location: @rant
    else
      render json: @rant.errors, status: :unprocessable_entity
    end
  end

  def update
    @rant = Rant.find(params[:id])
    if @rant.update(rant_params)
      head :no_content
    else
      render json: @rant.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rant = Rant.find(params[:id])
    @rant.destroy
    head :no_content
  end


  private

  def rant_params
    params.require(:rant).permit(:title, :body, :user_id)
  end

end
