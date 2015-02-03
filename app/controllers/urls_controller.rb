class UrlsController < ApplicationController

  def index
    @url ||= Url.new
    @urls = Url.all
  end

  def create
    url = Url.create!(url_params)
    if url.save
      redirect_to root_path, notice: "You just made a flash notice"
    else
      render :new, alert: "sorry, looks like something went wrong.  Try that again"
    end
  end


  private

  def url_params
    params.require(:url).permit(:full_url, :slug)
  end
end