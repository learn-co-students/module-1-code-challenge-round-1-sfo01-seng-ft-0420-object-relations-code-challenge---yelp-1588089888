class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    customers = []
    Review.all.each do |review| 
      if review.restaurant == self
        customers << review.customer
      end
    end
    customers.uniq
  end

  ### 
  def average_star_rating
    ratings = []
    Review.all.each do |review|
      if review.restaurant == self
        ratings << review.rating
      end
    end
    ratings += ratings / ratings.count
  end

end
