class Customer
  attr_accessor :given_name, :family_name
@@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  #if this method doesn't work correctly, it's because I ran out of time testing it
  def find_by_name(full)
    full = self.full_name
    Review.all.first do |ful_nm|
      full == ful_nm.customer
    end

  end

  def num_reviews
    Review.all.select do |revs|
      self == revs.customer
    end.count
  end

  def restaurants
    rest = Review.all.select do |rests|
      self == rests.customer
    end
    rest.uniq
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, rating)
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

end