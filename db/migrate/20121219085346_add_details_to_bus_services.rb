class AddDetailsToBusServices < ActiveRecord::Migration
  def self.up
    add_column :bus_services, :no_of_seats, :string
    add_column :bus_services, :gps_unit_no, :string
    add_column :bus_services, :gprs_sim_no, :string
    add_column :bus_services, :status, :boolean
    add_column :bus_services, :reader_id, :integer
  end

  def self.down
    remove_column :bus_services, :no_of_seats
    remove_column :bus_services, :gps_unit_no
    remove_column :bus_services, :gprs_sim_no
    remove_column :bus_services, :status
    remove_column :bus_services, :reader_id
  end
end
