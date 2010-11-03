#!/usr/bin/env ruby

require 'open-uri'
require 'rss'

rss = RSS::Parser.parse(open('http://feeds.feedburner.com/codinghorror/'))
# rss = RSS::Parser.parse(open('http://www.engadget.com/rss.xml'))
rss.items.each do |item|
  description = 
  post = Post.new(:title => item.title, :body => item.description, :user => User.find(1 + rand(2)))
  post.save
end
