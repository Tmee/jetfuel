class UrlsController < ApplicationController

  def index
    @urls = Url.all.order(popularity: :desc)
  end

  def create
    url = Url.create!(url_params)
    if url.save
      redirect_to root_path, notice: "Thanks for using Shortener"
    end
  end

  def show
    url = Url.find(params[:id])
    url.like
    redirect_to url[:full_url]
  end


  private

  def url_params
    params.require(:url).permit(:full_url, :slug)
  end
end