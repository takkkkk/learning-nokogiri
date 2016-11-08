#!/usr/bin/env ruby

require 'open-uri'
require 'pp'
require 'nokogiri'

url = 'https://wiki.debian.org/DebianReleases'
html = open(url).read

#puts html
doc = Nokogiri::HTML.parse(html)
# pp doc

tables = doc.xpath('//table')
strongs = tables[0].xpath('.//strong')

i = 0
arry = Array.new
while i < 4 do
  arry[i] = strongs[i].inner_text
  print arry[i].to_s.ljust(25)
  i += 1
end
