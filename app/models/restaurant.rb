class Restaurant
  attr_reader :name #can't change after created 
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end 

  def add_review(customer, rating)
    Review.new(customer, self, rating)
  end 

  def reviews 
    Review.all.select do |review|
      review.restaurant == self
    end 
  end 

  def customers #same issue as with customers - come back 
    reviews.uniq {|review| [review.customer] }
    end 
  end 

  def average_star_rating #Didn't get to this one yet. Would need to take one instance of restaurant find all the ratings for that restaurant from the reviews. Average them 
    ratings = reviews.map do 
    end 
  end 





end
