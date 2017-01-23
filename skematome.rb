#!/usr/bin/env ruby

require 'open-uri'
require 'pp'
require 'nokogiri'

doc = Nokogiri::HTML(open('http://skematome.antenam.info/'))

table = doc.xpath('//table')

tr = table.first.xpath('.//tr')

td = tr.xpath('.//td')

td.css('.blog_post').each do |line|
  puts line.inner_text
end
