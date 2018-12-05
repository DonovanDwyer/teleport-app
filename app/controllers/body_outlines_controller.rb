class BodyOutlinesController < ApplicationController

  def create
    # @bodyoutline = BodyOutline.create(body_params)
    @outline = FaceapiAdapter.sendBodyData(body_params[:image][23..-1])
    BodyOutline.create(image: @outline)
    render json: @outline
  end

  private

  def body_params
    params.permit(:id, :image)
  end

end
