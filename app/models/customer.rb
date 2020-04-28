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

  def restaurants
    selected = Review.all.select {|review| review.customer == self}
    selected.map {|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)

  end

  def num_reviews
    selected = Review.all.select {|review| review.customer == self}
    selected.count
   

  end

  def self.find_by_name(name)
    #iterate over
    self.all.find{|customer| customer.full_name == name}

  end

  def self.find_all_by_given_name(name)
    self.all.select {|customer| customer.given_name == name}

  end


end
