require 'nokogiri'
require 'open-uri'

class ScrapeYelp
  def call
    parse_data
  end

private

  def parse_data
    data.at_css('.biz-city').text.strip if data
  end

  def data
    @_data ||= begin
      Nokogiri::HTML(open(url, 'User-Agent' => "Ruby/#{RUBY_VERSION}"))
    rescue
      nil
    end
  end

  def url
    'https://www.yelp.com/user_details_bookmarks?userid=BH1QGooKzr44ca9U8_5EDg'
  end
end