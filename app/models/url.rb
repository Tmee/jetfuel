class Url < ActiveRecord::Base
  validates :full_url, presence: true
  validates :slug, uniqueness: true
  before_save :generate_slug, :set_title

  def like
    increment!(:popularity)
  end


  private

  def set_title
    begin
      doc   = Nokogiri::HTML(open("#{full_url}"))
      title = doc.xpath("//title").text
      self.title = title
    rescue SocketError
    end
  end

  def generate_slug
    self.slug = SecureRandom.urlsafe_base64(8)
  end
end
