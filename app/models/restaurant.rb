class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    selected = Review.all.select {|review| review.restaurant == self}

    #might need to come back and map this a step further
   
  end

  def customers 
    selected = Review.all.select {|review| review.restaurant == self}
     selected.map {|review| review.customer}.uniq
    

  end

  def average_star_rating
    selected = Review.all.select {|review| review.restaurant == self}
    sum = selected.map {|review| review.rating}.sum
    count = selected.map {|review| review.rating}.count

    sum / count


  end



end
