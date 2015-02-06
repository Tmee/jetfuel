class SearchController < ApplicationController

  def search
    @urls ||= url_search(params[:search])
    render :search
  end

  def url_search(search)
    urls = Url.where('full_url ILIKE ?', "%#{search}%")
  end
end
