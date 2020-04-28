class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating} #Store in local variable to prevent two Class Method calls when one will do
    (ratings.sum / ratings.count.to_f).round(1) #1 decimal place sounds nice here (3.8 rating etc.)
  end

  def self.all
    @@all
  end
end
