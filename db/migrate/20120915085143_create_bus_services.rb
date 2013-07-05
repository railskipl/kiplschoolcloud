class CreateBusServices < ActiveRecord::Migration
  def self.up
    create_table :bus_services do |t|
      t.string :bus_name
      t.string :bus_no
      t.string :driver_name
      t.string :conduct_name
      t.integer :mobile_no
      t.string :bus_allocated_no
      t.string :bus_start_point
      t.string :bus_end_point

      t.timestamps
    end
  end

  def self.down
    drop_table :bus_services
  end
end
