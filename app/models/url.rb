class Url < ActiveRecord::Base
  validates :full_url, presence: true
  validates :slug, uniqueness: true

  before_save :generate_slug, :set_title, :set_favicon


  def like
    increment!(:popularity)
  end

  private

  def generate_slug
    self.slug = SecureRandom.urlsafe_base64(8)
  end

  def set_title
    begin
      doc = Nokogiri::HTML(open("#{full_url}"))
      self.title = doc.xpath("//title").text
    rescue
    end
  end

  def set_favicon
    begin
      open_url
      self.favicon = "#{@http}//#{@url}/favicon.ico"
    rescue OpenURI::HTTPError => e
      if e.message == '404 Not Found'
        self.favicon = "shrink.png"
      end
    end
  end

  def open_url
    @http = full_url.scan(/^(.*)\/{2}/)[0][0]
    @url  = clean_end_of_url(format_url)
    open("#{@http}//#{@url}/favicon.ico")
  end

  def format_url
    full_url.gsub(/^(.*)\/{2}/, '')
  end

  def clean_end_of_url(formatted_url)
    formatted_url.gsub(/\/{1}(.*)$/, '')
  end
end
