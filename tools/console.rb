require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# class Customer
dan = Customer.new("Dan", "Smith")
den = Customer.new("Dan", "Smith")

dona = Customer.new("Dona", "black")
april = Customer.new("april", "cloud")
arthas = Customer.new("arthas", "lich_king")
# class Restaurant
pizza = Restaurant.new("Pizza_place")
thai = Restaurant.new("thai_food")
pasta = Restaurant.new("Pasta_restaurant")
sushi = Restaurant.new("sushi_restaurant")
# class Review
review_1 = Review.new(dan, pizza, 5)
review_2 = Review.new(dona, thai, 15)
review_3 = Review.new(april, pasta, 25)
review_4 = Review.new(arthas, sushi, 45)
review_5 = Review.new(dan, sushi, 65)
review_6 = Review.new(dona, pasta, 85)

    


binding.pry
0 #leave this here to ensure binding.pry isn't the last line