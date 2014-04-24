require 'rubygems'
require 'nokogiri'
require 'mysql2'
load 'db.rb'

post_comment = {}
connect = Mysql2::Client.new(:host => "localhost", :username => @user, :password => @password, :database => @database)

Dir.foreach("pages") do |fname|
  if fname.length > 4
    page = Nokogiri::HTML(open("pages/#{fname}"))
    puts page.css('title').text
  end
end
