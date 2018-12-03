class ScreenshotsController < ApplicationController

  def create
    @screenshot = Screenshot.create(screen_params)
    @outline = FaceapiAdapter.sendBodyData(screen_params[:image][23..-1])
    render json: @outline
  end

  private

  def screen_params
    params.require(:screenshot).permit(:image)
  end

end
