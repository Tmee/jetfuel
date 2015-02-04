require 'rails_helper'

RSpec.describe Url, :type => :model do

  let(:url) do
    Url.create(full_url: "https://www.google.com")
  end

  it "has a valid url" do
    expect(url).to be_valid
  end

  it "generates a slug before saving" do
     expect(url.slug).to be_present
  end
end
