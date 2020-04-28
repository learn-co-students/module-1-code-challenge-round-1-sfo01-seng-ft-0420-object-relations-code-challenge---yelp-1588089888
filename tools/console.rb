require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Khanittha", "Kraj")
customer2 = Customer.new("Thorin", "Bustamante")
customer3 = Customer.new("Mike", "Griglak")
customer4 = Customer.new("Mike", "Gorgie")

restaurant1 = Restaurant.new("BBQ-Place")
restaurant2 = Restaurant.new("Pizza-Planet")
restaurant3 = Restaurant.new("Sushi-Bomb")

review1 = Review.new(customer1, restaurant1, 10)
review2 = Review.new(customer2, restaurant2, 5)
review3 = Review.new(customer3, restaurant3, 8)
review4 = Review.new(customer2, restaurant1, 5)
review5 = Review.new(customer1, restaurant3, 9)
review5 = Review.new(customer3, restaurant1, 10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line