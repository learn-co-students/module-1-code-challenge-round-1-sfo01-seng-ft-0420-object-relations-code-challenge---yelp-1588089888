class Customer
  attr_accessor :given_name, :family_name

  @@all = []


  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants(name) #works
    Restaurant.all.each {|n| n.name == name}
  end

  def add_review(restaurant, rating) #works
    Review.new(self,restaurant,rating)
  end


  def num_reviews(name) #not working
    Review.all.select {|n| n.rating == name}
    #c1.num_reviews("John") => total of reviews of c1
  end

  def self.find_by_name(name) #works?
    finder = Customer.all.select {|n| n.family_name == name}
  end


  def self.find_all_by_given_name(name) #works
    Customer.all.select {|n|n.given_name == name}
  end



end



c1 = Customer.new("John", "Tom")
c2 = Customer.new("Frances", "Gonzales")
c3 = Customer.new("Julia", "Tom")

c4 = Customer.new("John", "Chan")

c5 = Customer.new("John", "Tommmy")

c6 = Customer.new("John", "Tong")

