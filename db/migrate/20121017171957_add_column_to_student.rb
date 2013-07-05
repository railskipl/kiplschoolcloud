class AddColumnToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :bus_fee_paid, :boolean,:default => false
    add_column :students, :hostel_fee_paid, :boolean,:default => false
  end

  def self.down
    remove_column :students, :hostel_fee_paid
    remove_column :students, :bus_fee_paid
  end
end
