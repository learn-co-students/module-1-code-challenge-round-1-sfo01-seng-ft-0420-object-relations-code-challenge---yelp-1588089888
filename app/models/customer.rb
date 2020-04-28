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

  def full_name
    return "#{@given_name} #{family_name}"
  end

  def self.all
    @@all
  end 


  def restaurants
    Review.all.select do |review|
      review.customer == self
    end
end

  def add_review(restaurant, rating)
    Reveiw.new(self, restaurant, rating)
  end

  def num_review
    
    review_array = Review.all.select do |review|
     review.customer == self

   end
   review_array.size
 end

  def self.find_by_name(full_name)
    @@all.find do |customer|
      customer.full_name == self
    end 
  end

  def self.find_all_by_given_name(give_name)
    @@all.map do |customer|
      customer.given_name == self
    end 
  end 




end


