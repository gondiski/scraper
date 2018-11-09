require 'HTTParty'
require 'Nokogiri'
require 'byebug'

def fs
	url = "https://fs.blog/mental-models"
	unparsed = HTTParty.get(url)
	parsed = Nokogiri::HTML(unparsed)
	title = parsed.css('p').css('strong')
	content = parsed.css('p')
	body = content.children.map {|para| para.text}.compact
	count = title.children.map { |title| title.text}.compact
	mm = (0...count.size).each do |index|
		puts "Title: #{index +1}---"
		puts "Model: #{count[index]}"
	end
	# list = (9...body.size).each do |all|
	# 	puts "Body: #{body[all]}"
	# end
	byebug	
end

fs