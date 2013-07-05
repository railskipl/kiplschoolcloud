class AddColumnLatAndLngToRoutes < ActiveRecord::Migration
  def self.up
    add_column :routes, :lat, :string
    add_column :routes, :lng, :string
  end

  def self.down
    remove_column :routes, :lng
    remove_column :routes, :lat
  end
end
