class Seed

  def initialize
    create_urls
  end

  def create_urls
    Url.create(full_url: "http://en.wikipedia.org/wiki/Software")
    Url.create(full_url: "http://download.cnet.com/VirtualDJ/3000-18502_4-10976868.html?tag=main;pop")
    Url.create(full_url: "http://www.amazon.com/design-download-business-education-software/b?ie=UTF8&node=229534")
    Url.create(full_url: "http://www.webopedia.com/TERM/S/software.html")
    Url.create(full_url: "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    Url.create(full_url: "http://www.codecademy.com/en/tracks/ruby")
    Url.create(full_url: "https://www.ruby-lang.org/en/documentation/")
    Url.create(full_url: "https://github.com/turingschool/intermission-assignments/blob/master/prep-for-module-4.markdown")
    Url.create(full_url: "https://gist.github.com/stevekinney/cac8d9374e99a0d7d4b2")
    Url.create(full_url: "http://ruby-doc.org/core-2.2.0/doc/syntax/control_expressions_rdoc.html")
    Url.create(full_url: "http://stackoverflow.com/questions/7760619/setting-maxlength-using-database-schema-settings")
    Url.create(full_url: "http://www.bbc.co.uk/history/people/alan_turing")
    Url.create(full_url: "http://www.costco.com/computers.html")
    Url.create(full_url: "http://www.computerhistory.org/timeline/?category=computerhistory")
    Url.create(full_url: "http://3dprinting.com/what-is-3d-printing/#howitworks")
    Url.create(full_url: "http://money.cnn.com/2015/02/06/news/companies/turbotax/index.html")
    Url.create(full_url: "http://money.cnn.com/2015/02/06/media/brian-williams-scandal/index.html?iid=TL_Popular")
  end
end

Seed.new