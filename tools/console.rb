require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Tisdale", "Fry")
customer2 = Customer.new("Tina", "Fey")
customer3 = Customer.new("Rick", "Short")
customer4 = Customer.new("Matt", "Smith")

restaurant1 = Restaurant.new("McDonalds")
restaurant2 = Restaurant.new("Arby's")

review1 = Review.new(customer1, restaurant1, 4)
review2 = Review.new(customer3, restaurant1, 8)
review3 = Review.new(customer2, restaurant2, 6)
review4 = Review.new(customer4, restaurant2, 7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line