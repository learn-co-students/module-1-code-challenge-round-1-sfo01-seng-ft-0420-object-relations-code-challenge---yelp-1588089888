class Review
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

    def review(restaurant_name)
        arr = []
        self.each do |elem|
            if(elem.restaurant == restaurant_name)
                arr.push(elem.rating)
            end 
        end 
        return arr
    end 

    def customers(name)
        arr = []
        self.each do |names|
            if(self.names == name)
                arr.push(self.names)
            end 
        end 
        return arr
    end 

    def num_reviews(name)
        arr = []
        self.each do |names|
            if(self.names == name)
                arr.push(self.names)
            end 
        end 
        return arr.length
    end 
    def average_star_rating(restaurant_name)
        arr = []
        self.each do |elem|
            if(elem.restaurant == restaurant_name)
                arr.push(elem.rating)
            end 
        end 
        sum = 0 
        avg = 0
        arr.each do |x|
            sum += x.rating 
            avg = sum/arr.length 
        end 
        return avg 
    end 
    def self.all 
        @@all 
    end 
end