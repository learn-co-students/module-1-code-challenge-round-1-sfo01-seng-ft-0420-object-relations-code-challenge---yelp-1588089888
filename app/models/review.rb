class Review

    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end
  
    def rating
        @rating
    end

    def self.all
        @@all
    end

    def customer
        self.customer
    end

    def restaurant
        self.restaurant
    end


end