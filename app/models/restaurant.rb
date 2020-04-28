class Restaurant
  attr_reader :name


@@all = []


  def initialize(name)
    @name = name

    @@all << self
  end


  def self.all
    @@all 
  end

  def reviews(name)
    Review.all.each {|r| r.rating == name}

    #instance.review("Panda Express") => rating
  end

  def customers(name)

    Customers.all.select {|r| r.given_name == name}


#returns a list of all customers
#review for restaurant

#instance.customers("Panda Express") => customers info?
  end



  def average_start_rating(restaurant)
    average = Review.all.each {|n|n.rating == restaurant}

    final = average.reduce(:+) / average.size
    final
  end






end


rst1 = Restaurant.new("Panda Express")
rst2 = Restaurant.new("In n Out")
rst3 = Restaurant.new("Chevys")
