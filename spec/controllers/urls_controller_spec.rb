require 'rails_helper'

RSpec.describe UrlsController, :type => :controller do


# Given that I am an anonymous user of the system
# And give a URL to the service
# Then I expect it to return a service shortened URL

  describe "user can use the service" do

    it "visits the site" do
      visit root_path
    end

    it "gives a URL to the shortener" do
      within("//form[@id='url']") do
      fill_in "url[full_url]", :with => "https://www.google.com"
    end
    end

    it "is given a shortened url" do
      expect(page).to have_content 'Thanks for using Shortener!'
    end
  end
end