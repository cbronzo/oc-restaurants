class Scraper

# attr_accessor :home_page
#
# def initialize(url)
#   self.home_page = url

  def self.scrape_restaurants
    doc = Nokogiri::HTML(open("https://la.eater.com/maps/orange-county-restaurants-santa-ana-irvine-dana-point-newport-beach-costa-mesa"))


    doc.css('.map_stack').each.with_index do |restaurant, index|
      name = restaurant.css('.c-mapstack__card-hed h1')[index].text.strip.gsub(/\d+. /,"")
      number_index = restaurant.css('.c-mapstack__card-index')[index].text
      phone = restaurant.css('.c-mapstack__phone-url a')[index].text
      address = restaurant.css('.c-mapstack__address')[index].text
        #separate city from state, not all have address
      description = restaurant.css('.c-entry-content p')[1..21][index].text
      website = restaurant.css('.c-mapstack__phone-url a')[1..21].attr("href").text


      binding.pry
    end

    # array = []

    # restaurant_hash = {}
    # restaurant_hash[:name] =
    # restaurant_hash[:description] =
    # restaurant_hash[:website] =
    # restaurant_hash[:phone] =
    # restaurant_hash[:address] =
    # array.push(restaurant_hash)






  end

end


# Variable Scraping:

# Title: doc.css('.c-mapstack__card-hed h1').first.text.strip

# Address: doc.css('.c-mapstack__address').first.text

# Phone doc.css('.c-mapstack__phone-url a').text

# Description doc.css('.c-entry-content p')[1..21].first.text

# Website: doc.css('.c-mapstack__phone-url a')[1..21].attr("href").text

# Number_index: doc.css('.c-mapstack__card-index').first.text
