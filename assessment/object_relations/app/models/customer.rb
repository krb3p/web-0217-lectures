class Customer

  attr_accessor :name

  @@customers = []

  def initialize (name)
    @name = name
    @@customers << self
    @reviews = []
    @restaurants =[]
  end

  def self.all
    @@customers
  end

  def find_by_name(name)
    self.all.detect {|customer| customer.name == name}
  end

  def add_review(description, restaurant_name)
    review = Review.new(description)
    restaurant = Restaurant.new(restaurant_name)
    review.customer = self
    review.restaurant = restaurant
    @reviews << review
  end


end

# bob.add_review ("it was good", olive_garden)
# # Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
