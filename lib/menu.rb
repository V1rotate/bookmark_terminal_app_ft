class Menu
  def initalize
    @bookmarks = []
  end

  def display_menu
    puts "Welcome to the App"
    puts "1. View all bookmarks"
    puts "2. Create bookmark"
    puts "3. Exit"
  end

  def selection
    print">"
    gets.chomp.to_i
  end

  def router
    loop do
      display_menu
      case selection
      when 1
        #do somethings
      when 2
        # do something
      when 3
        exit
      end
    end
  end

end