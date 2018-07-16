class Scraper

  def scrape_restaurants
    doc = Nokogiri::HTML(open("https://la.eater.com/maps/orange-county-restaurants-santa-ana-irvine-dana-point-newport-beach-costa-mesa"))
    array = []

    doc.css('.map_stack').each do |restaurant|
      restaurant_hash = {}
      restaurant_hash[:name] = restaurant.css('.c-mapstack__card-hed h1').text.strip.gsub(/\d+. /,"")
      restaurant_hash[:phone] = restaurant.css('.c-mapstack__phone-url a').text
      restaurant_hash[:address] = restaurant.css('.c-mapstack__address').text
      restaurant_hash[:description] = restaurant.css('.c-entry-content p')[1..21].text
      restaurant_hash[:website] = restaurant.css('.c-mapstack__phone-url a')[1..21].attr("href").text
      array << restaurant_hash
    end
    Best_Restaurant.create_from_collection(array)
  end


end




# Variable Scraping:

# Title: doc.css('.c-mapstack__card-hed h1').first.text.strip

# Address: doc.css('.c-mapstack__address').first.text

# Phone doc.css('.c-mapstack__phone-url a').text

# Description doc.css('.c-entry-content p')[1..21].first.text

# Website: doc.css('.c-mapstack__phone-url a')[1..21].attr("href").text

# Number_index: doc.css('.c-mapstack__card-index').first.text
#number_index = restaurant.css('.c-mapstack__card-index')[index].text
