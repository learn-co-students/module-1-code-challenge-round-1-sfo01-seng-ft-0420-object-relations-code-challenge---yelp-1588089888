require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# uncomment below lines to test out various function and generate some starter data
# cust_a = Customer.new("thea", "hb")
# cust_b = Customer.new("bob", "peterson")
# cust_c = Customer.new("barack", "obama")
# cust_d = Customer.new("michelle", "obama")
# rest_a = Restaurant.new("fork")
# rest_b = Restaurant.new("spoon")
# rest_c = Restaurant.new("knife")
# rest_d = Restaurant.new("chopsticks")
# rev_aa = Review.new(cust_a, rest_a, 3)
# rev_aa_2 = Review.new(cust_a, rest_a, 3)
# rev_ab = Review.new(cust_a, rest_b, 3)
# rev_ac = Review.new(cust_a, rest_c, 3)
# rev_bb = Review.new(cust_b, rest_b, 3)
# rev_bc = Review.new(cust_b, rest_c, 4.5)
# rev_ba = Review.new(cust_b, rest_a, 5)
# rev_cc = Review.new(cust_c, rest_c, 2)
# rev_cc.restaurant 
# rev_cc.customer
# rev_cc.rating
# Review.all 
# cust_a.add_review(rest_a, 1)
# cust_a.restaurants
# rest_a.customers
# rest_a.reviews
# cust_a.num_reviews
# Customer.find_by_name("thea hb")
# cust_z = Customer.new("thea", "brown")
# Customer.find_all_by_given_name("thea")
# rest_a.average_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line