#!/usr/bin/env ruby

require 'open-uri'
require 'pp'
require 'nokogiri'

doc = Nokogiri::HTML(open('https://wiki.debian.org/DebianReleases'))

tables = doc.xpath('//table')

# テーブル2つ分取得
tables.first.xpath('.//tr').each do |tr| # テーブルから行を取得
  tr.xpath('.//td').each do |td| # 取得した各行に対して、tdタグを指定し、その要素をljustメソッドによって左寄せにする。
    print td.inner_text.ljust(30)
  end
  puts
end


