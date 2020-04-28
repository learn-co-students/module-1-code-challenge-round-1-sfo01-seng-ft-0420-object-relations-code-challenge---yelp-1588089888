class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |rev_obj|
      self == rev_obj.restaurant
    end
  end

  def customers
    custs = Review.all.select do |revs|
      self == revs.restaurant
    end
    custs.uniq
    # custs.map do |cust|
    #   cust.given_name
    #   binding.pry
  end

  def self.all
    @@all
  end

end
