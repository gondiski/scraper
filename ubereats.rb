require 'nokogiri'
require 'httparty'
require 'byebug'

def ubereats
	url = "https://ubereats.com/en-KE/stores/"
	unparsed_page = HTTParty.get(url)
	parsed_page = Nokogiri::HTML(unparsed_page)
	byebug
end

ubereats