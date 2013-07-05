class AddColumnBusServiceIdToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :bus_service_id, :integer
  end

  def self.down
    remove_column :students, :bus_service_id
  end
end
