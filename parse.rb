require 'rubygems'
require 'nokogiri'
require 'mysql2'

post_comment = {}

Dir.foreach("pages") do |fname|
  if fname.length > 4
    page = Nokogiri::HTML(open("pages/#{fname}"))
    puts page.css('title').text
  end
end