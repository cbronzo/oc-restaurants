#This is our enviornment file where we will require all of the classes we build inside of our restaurant directory.

### REQUIRED GEMS ###
require 'nokogiri'
require 'open-uri'
require 'pry'

### REQUIRED FILES ###
require_relative "./oc_restaurants/version"
require_relative "./oc_restaurants/best_restaurant"
require_relative "./oc_restaurants/scraper"
require_relative "./oc_restaurants/cli"

### NAMESPACE MODULE ###
module OCRestaurants
end
