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
    Review.all.select { |s| s.restaurant == self }
  end

  def customers
    array = []
    arr = Review.all.select { |s| s.restaurant == self }
    i = 0
    while i < arr.length do 
      num = arr[i]
      array << num.customer.full_name
      i += 1
    end
    array.uniq
  end

  def average_star_rating
    count = 0
    array = []
    arr = Review.all.select { |s| s.restaurant == self }
    i = 0 
    while i < arr.length do
      num = arr[i]
      array << num.rating
      i += 1
    end
    ele = array.sum
    avg = ele / array.length
    avg
  end

end
