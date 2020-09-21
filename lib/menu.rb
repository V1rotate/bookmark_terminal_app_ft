class Menu
  def initalize
    @bookmarks = []
  end

  def display_menu
    puts 'Welcome to the App'
    puts '1. View all bookmarks'
    puts '2. Create bookmark'
    puts '3. Exit'
  end

  def selection
    print '>'
    gets.chomp.to_i
  end

  def create_bookmark
    bookmark = Bookmark.bookmark_user_input
        @bookmarks = Bookmark.new(
          bookmark[:title],
          bookmark[:url],
          bookmark[:tags],
          bookmark[:description]
        )
  end

  def router
    loop do
      display_menu
      case selection
      when 1
        # do somethings
      when 2
        create_bookmark
      when 3
        exit
      else
        puts "enter valid input"
      end
    end
  end
end
