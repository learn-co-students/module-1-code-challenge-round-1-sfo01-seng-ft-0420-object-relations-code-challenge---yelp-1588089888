require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Maggie", "Cooper")
c2 = Customer.new("Channing", "Tatum")
c3 = Customer.new("Maggie", "Smith")

r1 = Restaurant.new("Quince")
r2 = Restaurant.new("French Laundry")

review1 = Review.new("Maggie", "Quince", 4)
review2 = Review.new("Maggie", "French Laundry", 3)
review3 = Review.new("Channing", "Quince", 5)
review4 = Review.new("Channing", "French Laundry", 4)

c1.add_review("Quince", 0)
c1.add_review("French Laundry", 5)
c1.add_review("Quince", 1)

c2.add_review("French Laundry", 4)

r2.add_review("Maggie", 2)
c1.num_reviews 
c1.find_by_name("Maggie Cooper")



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line