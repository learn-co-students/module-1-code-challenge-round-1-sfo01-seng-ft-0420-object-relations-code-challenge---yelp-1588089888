class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def reviews
    Review.all.map do |x| x.restaurant == self 
    end
  end

  def customers
    Customer.all.uniq do |x| x.review.restaurant == self 
    end
  end

  def average_star_rating
    sum = Review.all.sum do |x| x.restaurant == self end
    num = Review.all.count do |x| x.restaurant == self end
    avg = sum / num
    avg
  end

end
