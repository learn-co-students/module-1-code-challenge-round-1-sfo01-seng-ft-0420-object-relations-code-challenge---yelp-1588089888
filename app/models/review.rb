class Review
attr_accessor :rating_num
attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating_num)
        @customer = customer
        @restaurant = restaurant
        @rating_num = rating_num.to_i
        @@all << self
    end 
  
    def self.all
        @@all
    end 

    def rating
        @rating_num
    end 

    
    


end