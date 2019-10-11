class UrlsController < ApplicationController
  def show
    @url = Url.find(params[:id])
    render json: @url
  end
  def create
    url = Url.create(url_params)
    redirect_to url
  end

  def stats
    @url = Url.find(params[:id])
  end
  
  private
  def url_params
    params.require(:url).permit(:long_url)
  end
end