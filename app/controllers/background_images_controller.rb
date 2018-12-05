require 'open-uri'
require 'base64'

class BackgroundImagesController < ApplicationController

  def index
    @background_images = BackgroundImage.all
    render json: @background_images
  end

  def show
    @background_image = BackgroundImage.find_by(id: params[:id])
    render json: @background_image
  end

  def create
    temp_img = open(bg_params[:image_url]) {|f| f.read }
    @background_image = Base64.encode64(temp_img)
    BackgroundImage.create(image_url: @background_image)
    render json: @background_image
  end

  def destroy
  end

  private
  def bg_params
    params.require(:background_image).permit(:id, :image_url)
  end

end
