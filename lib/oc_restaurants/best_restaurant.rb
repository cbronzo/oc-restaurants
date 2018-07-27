class OCRestaurants::Best_Restaurant

attr_accessor :phone, :name, :address, :description, :website

  @@all = []


  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
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

  # def self.first_five
  #   @@all[1..5]
  # end


end
