class Review
    attr_accessor :restaurant, :rating
    attr_reader :customer
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 


  
end