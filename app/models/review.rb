class Review
    attr_reader :rating, :customer, :restaurant
    @@all = []

    def initialize(restaurant, customer, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

  

    def self.all
        @@all
    end

end