#CLI Controller

class OCRestaurants::CLI

  # attr_accessor :name
  #
  # def initialize(name)
  #   @name = name
  # end

  def start
    puts "Welcome to OC's best Restaurants!"
    # main_menu
    list_restaurants
    Scraper.scrape_restaurants
    #display the list of restaurants to the user
  end

  def list_restaurants
      puts "Please select a restaurant to learn more!"
  end

  def main_menu
    input = gets.strip
  end

end
