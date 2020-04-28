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
  
  def restaurants
    my_reviews.map {|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    my_reviews.size
  end

  def self.find_by_name(full_name)
    @@all.find {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_given_name(given_name)
    @@all.find_all {|customer| customer.given_name == given_name}
  end

  def self.all 
    @@all
  end

  private
  def my_reviews
    Review.all.select {|review| review.customer == self}
  end
end
