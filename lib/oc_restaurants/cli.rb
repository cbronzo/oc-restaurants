#CLI Controller

class OCRestaurants::CLI

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def start
    list_restaurants
    main_menu
    Scraper.scrape_restaurants
    #display the list of restaurants to the user
  end

  def list_restaurants

    puts "Welcome to OC's best Restaurants!"
    puts "Please select a restaurant to learn more!"
  end

  def main_menu
    input = gets.strip
  end

end
