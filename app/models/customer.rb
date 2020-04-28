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

  def given_name
    @given_name
  end

  def family_name
    @family_name
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.uniq do |x| x.restaurant.customer = self
    end
  end

  def add_review(restaurant, rating)
    new_review = Review.new
    new_review.customer = self.customer
    new_review.restaurant = restaurant
  end

  def num_reviews
    Review.all.count do |x| x.customer == self 
    end
  end

  def find_by_name(full_name_string)
    @@all.find do |x| x.full_name == full_name_string 
    end
  end

  def find_all_by_given_name(given_name_string)
    @all.map do |x| x.given_name == given_name_string 
    end
  end

end
