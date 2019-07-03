# Web scraping example
# https://ruby-lang.co/
# gem install nokogiri

require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open('https://ruby-lang.co/what-is-ruby/'))

puts "### Search for nodes by css"
doc.css('li', 'article h2').each do |link|
  puts link.content
end

