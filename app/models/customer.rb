class Customer
  attr_accessor :given_name, :family_name, :full_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    @full_name = "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    restaurants = []
    Review.all.each do |review| 
      if review.customer == self
        restaurants << review.restaurant
      end
    end
    restaurants.uniq
  end

  ####
  def add_review(restaurant, rating)
    # create new review with restaurant object and int rating
    new_review = Review.new(restaurant2, 7)
    # assign that particular customer to the review
    new_review.customer = self
  end

  def num_reviews
    num = Review.all.select {|review| review.customer == self}
    num.size
  end
  
  #### given a string of full name
  # return the first customer whose full name match
  def self.find_by_name(argname)
    self.all.find do |name| 
      name = @full_name
      name == argname
    end
  end

  def self.find_all_by_given_name(name)
    self.all.select {|customer| customer.given_name == name}
  end
  
end
