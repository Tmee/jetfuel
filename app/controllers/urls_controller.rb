class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def create
    url = Url.create!(url_params)
    if url.save
      redirect_to root_path, notice: "Thanks for using Shortener"
    else
      render :new, alert: "sorry, looks like something went wrong.  Try that again"
    end
  end

  def redirect
    full_url = Url.find_by(slug: params[:slug])
    redirect_to full_url[:full_url]
  end


  private


  def url_params
    params.require(:url).permit(:full_url, :slug)
  end
end