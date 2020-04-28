class Customer
  attr_accessor :given_name, :family_name

  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    array = []
    arr = Review.all.select { |s| s.customer == self }
    i = 0
    while i < arr.length do 
      num = arr[i]
      array << num.restaurant
      i += 1
    end
    array.uniq
  end

  def add_review(restaurant, num)
    Review.new(self, restaurant, num)
  end

  def num_reviews
    Review.all.select { |s| s.customer == self }.length
  end

  def self.find_by_name(str)
    array = []
    arr = Review.all.select { |s| s.customer }
    i = 0
    while i < arr.length do 
      num = arr[i]
      array << num.customer.full_name
      i += 1
    end
    array.find { |s| s == str }
  end

  def self.find_all_by_given_name(str)
    @@all.select { |s| s.full_name == str }
  end

end
