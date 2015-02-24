class RantsController < ApplicationController

  def index
    @rants = Rant.all
    render json: @rants
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
    if @rant.update(post_params)
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
    params.require(:rant).permit(:title, :body)
  end

end
