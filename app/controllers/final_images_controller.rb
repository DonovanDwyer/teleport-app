

class FinalImagesController < ApplicationController

  def index
    @final_images = FinalImage.all
    render json: @final_images
  end

  def show
    @final_image = FinalImage.find(params[:id])
    render json: @final_image
  end

  def create
    @final_image = FinalImage.create(image: final_params[:image])
    render json: @final_image
  end

  def destroy
    @final_image = FinalImage.find(params[:id])
    @final_image.destroy
  end

  private

  def final_params
    params.require(:final_image).permit(:id, :image)
  end

end
