require 'pry'

class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def full_name
    # binding.pry 
    "#{given_name} #{family_name}"
  end

  def self.all 
    @@all 
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def reviews
    Review.all.select do |review|
      review.customer == self 
    end 
  end 

  def restaurants #returning the unique instances of reviews. Need it to just return the restaurant names. 
   reviews.uniq {|review| [review.restaurant] }
  end 

  # def restaurants #gives me restaurant names but doesn't take out duplicates. 
  #   reviews.map do |review|
  #     review.restaurant
  #   end 
  # end 

  def num_reviews
    self.reviews.count
  end 

  def find_by_name(name)
    @@all.find do |customer|
      customer.full_name == name
    end
  end

  def find_all_by_given_name(name)
    @@all.select do |customer| 
      customer.given_name == name
    end 
  end 

end

