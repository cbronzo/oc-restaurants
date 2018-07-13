class Scraper

  def self.scrape_restaurants
    doc = Nokogiri::HTML(open("https://la.eater.com/maps/orange-county-restaurants-santa-ana-irvine-dana-point-newport-beach-costa-mesa"))
    doc.css("").text



  end

end



#Title: <h1> == 0
# Number: <span class="c-mapstack__card-index">2.</span>
# Address: <div class="c-mapstack__address">695 Town Center Dr Suit 160<br>Costa Mesa, CA 92626</div>
# Website link: <a target="_blank" data-analytics-link="link-icon" href="http://tacomaria.com">Visit Website</a>
