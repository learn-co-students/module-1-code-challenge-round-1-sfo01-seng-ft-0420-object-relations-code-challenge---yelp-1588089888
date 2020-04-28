class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  def self.find_by_name(name)
    if(@given_name == name)
      return name 
    end 
  end 
  def self.find_all_by_name(names)
    arr = []
    self.each do |element|
      if(element.given_name == names)
        arr.push(element.given_name)
      end 
    end 
    return arr
  end 
  def self.all
    @@all 
  end 
end
