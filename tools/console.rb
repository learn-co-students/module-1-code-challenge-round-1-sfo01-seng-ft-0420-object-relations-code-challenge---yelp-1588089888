require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("James", "McElroy")
customer4 = Customer.new("James", "Adams")
customer5 = Customer.new("James", "Bezos")
customer2 = Customer.new("Annie", "Richardson")
customer3 = Customer.new("Don", "Mallory")

restaurant1 = Restaurant.new("WhataBurger")
restaurant2= Restaurant.new("In-N-Out")

review1 = Review.new(customer1, restaurant1, 8)
review4 = Review.new(customer1, restaurant2, 9)
review2 = Review.new(customer2, restaurant1, 6)
review3 = Review.new(customer3, restaurant1, 9)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line