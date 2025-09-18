require 'http'
require 'nokogiri'

def crypto_scraper
  crypto = []
  url = "https://coinmarketcap.com/all/views/all/"
  page = Nokogiri::HTML(HTTP.get(url).to_s)
  
  crypto_names = page.xpath('//table//tr/td[2]')
  crypto_prices = page.xpath('//table//tr/td[5]')
  
  crypto_prices.each_with_index do |n, i|
    name = crypto_names[i]&.text&.strip
    price = n.text.strip
    crypto << { Name: name, Price: price } 
  end
  
  crypto
end

puts "Nb cryptos trouvés : #{crypto_scraper.size}"
puts crypto_scraper