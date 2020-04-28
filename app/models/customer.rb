class Customer
  attr_accessor :given_name, :family_name
  @@all = [ ]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant,rating)
    Review.new(self, restaurant, rating)
  end

  def restaurants
   list_rest = Review.all.map do |review|
      if review.customer == self
        review.restaurant
      end
    end
    list_rest.uniq
  end
  
  def num_reviews
    review_amount = Review.all.map do |review|
      if review.customer == self
        review.customer
      end
    end
    review_amount.length
  end

  def self.find_by_name(name)
    search = @@all.find {|person| person.full_name == name}
    found = Array[search]
  end

  def self.find_all_by_given_name(name)
    search = @@all.select {|person| person.given_name == name}
  end




  def self.all
    @@all
  end

end
