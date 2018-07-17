#CLI Controller

class CLI
  attr_accessor :name

  def initailize(name)
    @name = name
  end

  def start
    puts "Welcome to Orange County's Best Restaurant
   Lineup!"
   # main_menu
   Scraper.new.scrape_restaurants
   list_restaurants
  end

  def list_restaurants
    puts "Please select a restaurant to learn more!"
    Best_Restaurant.all.each.with_index(1) do |restaurant, index|

      puts "#{index}. #{restaurant.website}"
    end
  end

end
