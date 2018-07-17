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
    puts "YUM! Here are 21 of the OC's best & hottest restaurants!"
    Best_Restaurant.all.each.with_index(1) do |restaurant, index|
      puts "#{index}. #{restaurant.name}"
    end
    puts "Please select a restaurant by entering its number (1-21) to learn more!"
    puts "To exit, type 'exit'."
    input = gets.strip
      if input.to_i.between?(1,21)
        index = input.to_i - 1
        restaurant_attributes
      elsif input == "exit"
        puts "You are now exiting the program. Thank you, goodbye!"
        exit
      else
        error
        list_restaurant_name
      end

  end


  def restaurant_attributes
    puts "This is working."
    # Best_Restaurant.all
    # puts "Below, you will find the details for #{restaurant.name}."
    #
    #
    #   puts "Description: #{restaurant.description}"
    #     if restaurant.address == ""
    #       puts "Sorry, no address information available."
    #     else
    #       puts "Address: #{restaurant.address}"
    #     end
    #
    #     if restaurant.phone == ""
    #       puts "Sorry, no phone number available."
    #     else
    #       puts "Phone Number: #{restaurant.phone}"
    #     end
    #
    #     if restaurant.website == ""
    #       puts "Sorry, no website available."
    #     else
    #       puts "Website: #{restaurant.website}"
    #     end
    #
    #   puts "To go back to the guide, type 'back'."
    #   puts "To exit, type 'exit'."
    #   input = gets.strip
    #     if input == "back"
    #       list_restaurant_name
    #     elsif input == "exit"
    #       exit
    #     else
    #       error
    #     end
  end


  def error
    puts "~ERROR, PLEASE TRY AGAIN~"
  end

end
