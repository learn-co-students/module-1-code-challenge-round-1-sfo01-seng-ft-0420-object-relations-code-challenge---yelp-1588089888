require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

x = Customer.new("didi", "cat")
y = Customer.new("nala", "cat")
a = Review.new("didi", "house", "69")
b = Review.new("nala", "house", "2")
house = Restaurant.new("house")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line