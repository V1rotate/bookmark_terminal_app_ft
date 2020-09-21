require_relative 'bookmark'

class Bookmark
  # getter, access attribute on the outside, top of page
  attr_reader :title, :url, :tags, :description

  include BookmarkHelper

  def initialize(title, url, tags, description)
    @title = title
    @url = url
    @tags = tags
    @description = description
  end

  def self.bookmark_user_input
    bookmark = {}
    INPUTS.each do |input|
      puts "what's the #{input}?"
      print '> '
      bookmark[input] = gets.chomp
    end
    bookmark
  end
end
