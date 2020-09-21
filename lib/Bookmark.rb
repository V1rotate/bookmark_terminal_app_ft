class Bookmark
  # getter, access attribute on the outside, top of page
  attr_reader :title, :url, :tags, :description

  def initialize(title, url, tags, description)
    @title = title
    @url = url
    @tags = tags
    @description = description
  end
end

# bookmark = Bookmark.new(
#   "Coder A",
#   "https:",
#   ["code", "learn"],
#   "this is a school"
# )

# puts bookmark