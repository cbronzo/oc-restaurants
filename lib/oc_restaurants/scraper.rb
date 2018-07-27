class OCRestaurants::Scraper

  def scrape_restaurants
    doc = Nokogiri::HTML(open("https://la.eater.com/maps/orange-county-restaurants-santa-ana-irvine-dana-point-newport-beach-costa-mesa"))
    array = []
      doc.css('section.c-mapstack__card').each do |restaurant|
        header = restaurant.css('.c-mapstack__card-hed')
          if header.size != 0
            oc_hash = {}
            oc_hash[:name] = header.css('h1').text.strip.gsub(/\d+. /,"")
            oc_hash[:description] = restaurant.css('.c-entry-content p').text
            oc_hash[:phone] = restaurant.css('.desktop-only').text
            oc_hash[:address] = restaurant.css('.c-mapstack__address').text
              website_link = restaurant.css('.c-mapstack__phone-url > a')
              if !website_link.empty?
                oc_hash[:website] = website_link.attr("href").value
              else
                oc_hash[:website] = ""
              end
            array << oc_hash
          end
        end
      OCRestaurants::Best_Restaurant.create_from_collection(array)
  end
end
