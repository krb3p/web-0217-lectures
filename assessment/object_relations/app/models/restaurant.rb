class Restaurant

  attr_accessor :name

  @@restaurants = []

  def initialize
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

end
