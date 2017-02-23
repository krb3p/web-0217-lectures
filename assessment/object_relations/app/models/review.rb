class Review

  attr_accessor :description, :restaurant, :customer

  @@reviews = []

  def initialize(description)
    @description = description
    @@reviews << self
  end

  def self.all
    @@reviews
  end

  def customer=(customer)
    @customer = customer
  end

  def restaurant
    @restaurant
  end

end
