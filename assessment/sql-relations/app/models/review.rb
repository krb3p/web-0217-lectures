class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods


  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id



  def customer
    sql = <<-SQL
      SELECT *
      FROM customers
      JOIN customer ON customers.id = review.customer_id
      WHERE customer_id = ?
    SQL
  end
  self.class.db.execute(sql, self.customer_id)


  def restaurant
    sql = <<-SQL
      SELECT *
      FROM restaurants
      JOIN restaurant ON restaurants.id = review.restaurant_id
      WHERE restaurant_id = ?
    SQL
  end
  self.class.db.execute(sql, self.restaurant_id)


end
