class AddColumnContactNumberToBusServices < ActiveRecord::Migration
  def self.up
    add_column :bus_services, :contact_number, :integer
  end

  def self.down
    remove_column :bus_services, :contact_number
  end
end
