class Restaurant
  attr_reader :name, :reviews

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def reviews
    Review.all.map do |review|
       review.rating_num
    end
  end 

  def customers
    Review.all.select do |review|
       review.customer 
    end 
  end

  def average_star_rating
    Review.all.map do |review|
      review.rating_num.collect do |rating|
        rating.sum / rating.size
      end
    end 
  end


end
