class AddColumnStreetNameToRoutes < ActiveRecord::Migration
  def self.up
    add_column :routes, :street, :string
    add_column :routes, :zip, :integer
  end

  def self.down
    remove_column :routes, :zip
    remove_column :routes, :street
  end
end
