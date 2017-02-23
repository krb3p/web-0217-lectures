class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def restaurants
    sql = <<-SQL
      SELECT restaurant
      FROM restaurants
      JOIN restaraunt ON owners.id = restaurant.owner_id
      WHERE owner_id = ?
    SQL
  end
      self.class.db.execute(sql, self.id)
end
