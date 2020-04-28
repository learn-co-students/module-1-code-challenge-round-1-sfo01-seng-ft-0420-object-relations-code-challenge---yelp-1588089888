class Review
  


    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = [ ]


    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating



        @@all << self
    end

    def self.all
        @@all
    end

    def rating(restaurant)


        # Review.all.map {|n| n.rating == restaurant}
        
        # rating << Restaurant.all.select {|r| r.restaurant == rating}

        #instance.rating("Panda Express") => rating
    end


    def customer
        

        # Customer.all.select {|r| r.given_name == review}÷

        #return review
        #create a review, cant change customer
        #r1.customer => 
    end

    def restaurant
        
    end



end

r1 = Review.new("John","Panda Express", 4)
r2  = Review.new("Frances","In n Out", 3)
r3 = Review.new("Julia","Chevys", 4)