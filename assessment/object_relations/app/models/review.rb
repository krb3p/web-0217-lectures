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
  
#   you already have the customer=, and restaurant method from attr_accessor

  def customer=(customer)
    @customer = customer
  end

  def restaurant
    @restaurant
  end

end
