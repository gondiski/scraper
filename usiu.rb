require 'HTTParty'
require 'Nokogiri'
require 'byebug'

def usiu
	url = "https://www.usiu.ac.ke/on-campus/news"
	unparsed = HTTParty.get(url)
	parsed = Nokogiri::HTML(unparsed)
	title = parsed.css('.page-header').css('h2')
	all = title.children.map { |head| head.text}.compact
	list = (0...all.size).each do |index|
		puts "id: #{index +1}"
		puts "#{all[index]}"
	end
	byebug
end

usiu