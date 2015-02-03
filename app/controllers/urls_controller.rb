class UrlsController < ApplicationController

  def index
    @url ||= Url.new
  end

  def create
    url = Url.create!(url_params)
    if url.save
      redirect_to root_path
      flash[:notice] = "You just made a flash notice"
    end
  end


  private

  def url_params
    params.require(:url).permit(:full_url)
  end
end