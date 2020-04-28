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

  def num_reviews
    my_reviews.count
  end

  def my_reviews
    Review.all.select {|review| review.customer == self}
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, self, rating)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find{|cust| [cust.given_name, cust.family_name] == name.split} #Stay destructuring, my friends
  end

  def self.find_all_by_given_name(name)
    all.select {|cust| cust.given_name == name}
  end

end
