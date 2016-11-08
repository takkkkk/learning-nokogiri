#!/usr/bin/env ruby

require 'open-uri'
require 'pp'
require 'nokogiri'

url = 'https://wiki.debian.org/DebianReleases'
html = open(url).read

<<<<<<< HEAD
doc = Nokogiri::HTML.parse(html)

tables = doc.xpath('//table')

=======
#puts html
doc = Nokogiri::HTML.parse(html)
# pp doc

tables = doc.xpath('//table')
>>>>>>> 5df753b0c012cf1c0299efbc6f8729d514ae3995
strongs = tables[0].xpath('.//strong')

i = 0
arry = Array.new
while i < 4 do
  arry[i] = strongs[i].inner_text
  print arry[i].to_s.ljust(25)
  i += 1
end
