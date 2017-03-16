class Page < ApplicationRecord
  has_many :entries

  URL_REGEX = /https?:\/\/[\S]+/

  validates :url, presence: true

  def h1s
    entries.where(tag_name: 'h1')
  end

  def h2s
    entries.where(tag_name: 'h2')
  end

  def h3s
    entries.where(tag_name: 'h3')
  end

  def url_is_invalid?
    url.match(URL_REGEX).blank?
  end

  def scrape_and_save!
    agent = Mechanize.new
    doc = agent.get(url)
    header_one_tags = doc.css('h1')
    header_two_tags = doc.css('h2')
    header_three_tags = doc.css('h3')

    header_one_tags.each do |tag|
      self.entries << Entry.new(tag_name: "h1", content: tag.text.strip)
    end
    header_two_tags.each do |tag|
      self.entries << Entry.new(tag_name: "h2", content: tag.text.strip)
    end
    header_three_tags.each do |tag|
      self.entries << Entry.new(tag_name: "h3", content: tag.text.strip)
    end

    self.save
  end

end
