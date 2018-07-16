class OCRestaurants::Best_Restaurant

  attr_accessor :hash :name :phone :address :description :website

  @@all = []

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value)
    end
    end

  end

  def self.all
      @@all
  end

  def save
      @@all << self
  end

  def self.create(hash)
    restaurant = self.new(hash)
    restaurant.save
    restaurant
  end

  def self.create_from_collection(array)
    array.each do |hash|
      self.create(hash)

  end




end