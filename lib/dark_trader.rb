require 'http'
require 'nokogiri'
require 'open-uri'

def crypto_scrapper
  crypto = []
  url = "https://coinmarketcap.com/all/views/all/"
  page = Nokogiri::HTML(HTTP.get(url).to_s)

  crypto_names  = page.xpath('//table/tbody/tr/td[2]')
  crypto_prices = page.xpath('//table/tbody/tr/td[5]')

  crypto_prices.each_with_index do |n, i|
    name  = crypto_names[i].text
    price = n.text
    crypto << { name => price } unless name.empty?
  end

  crypto
end

puts crypto_scrapper
