require 'HTTParty'
require 'Nokogiri'
require 'byebug'

def jumia
	url = "https://food.jumia.co.ke/restaurants"
	unparsed = HTTParty.get(url)
	parsed = Nokogiri::HTML(unparsed)
	byebug
end

jumia