class Restaurant
  attr_reader :name
  @@all = [ ]
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant = self}
  end

  def customers
    list_cust = Review.all.map do |review|
      if review.restaurant == self
        review.customer
      end
    end
    list_cust.uniq
  end

  def average_star_rating
    reviews.map do |review|
      review.rating
    end.inject {|acc, rate| acc + rate }.to_f / reviews.length
  end


  def self.all
    @@all
  end

end
