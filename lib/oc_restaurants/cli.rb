#CLI Controller

class CLI
  attr_accessor :name

  def initailize(name)
    @name = name
  end

  def start
    puts "Welcome to 'Orange County's 21 Hottest Restaurants' Guide!"
    Scraper.new.scrape_restaurants
    menu
  end

  def menu
    puts "Type 'guide' to see the list of OC Restaurants."
    puts "Otherwise, type 'exit'."
    input = gets.strip
      if input == "guide"
        list_restaurant_name
      elsif input == "exit"
        puts "You are now exiting the program. Thank you, goodbye!"
        exit
      else
        error
        menu
      end
  end


  def list_restaurant_name
    puts "Here are 21 of the OC's best restaurants!"
    puts "Please select a restaurant by entering its number (1-21) to learn more!"
    Best_Restaurant.all.each.with_index(1) do |restaurant, index|
      puts "#{index}. #{restaurant.name}"
    end
    input = gets.strip
    index = input.to_i
      if input == 1..21
        restaurant_attributes
      else error
        list_restaurant_name
  end

  def input
    input == gets.strip

  end

  def restaurant_attributes(input)
    input ==

    Best_Restaurant.all.each do |restaurant|
      puts "#{restaurant.name}"
      puts "#{restaurant.description}"
      puts "#{restaurant.address}"
      puts "#{restaurant.phone}"
      puts "#{restaurant.website}"
    end
  end


  def list_restaurant_description
  end

  def list_restaurant_phone
  end

  def list_restaurant_address
  end

  def list_restaurant_website
  end

  def error
    puts "~Error, please try again~"
  end

end
