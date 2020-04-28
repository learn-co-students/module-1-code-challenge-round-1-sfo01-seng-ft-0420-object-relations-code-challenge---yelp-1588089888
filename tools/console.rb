require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



del_popolo = Restaurant.new("Del Popolo")
mister_jius = Restaurant.new("Mister Jiu's")
coi = Restaurant.new("Coi")
republique = Restaurant.new("Republique")
rich_table = Restaurant.new("Rich Table")

don = Customer.new("Don", "Mallory")
steven = Customer.new("Steven", "Parsons")
tisdale = Customer.new("Tisdale", "Fry")
maggie = Customer.new("Magdalena", "Cooper")
don_king = Customer.new("Don", "King")

Review.new(del_popolo, don, 5)
Review.new(del_popolo, don, 3) #bad second experience!?
Review.new(del_popolo, maggie, 2) #didn't like the wine selection
Review.new(del_popolo, tisdale, 5)

Review.new(republique, don, 5)
Review.new(republique, steven, 5)
Review.new(republique, maggie, 5)  #apparently they crush it
Review.new(republique, tisdale, 5)

Review.new(coi, don, 4)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line