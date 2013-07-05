class CreateBusSettings < ActiveRecord::Migration
  def self.up
    create_table :bus_settings do |t|
      t.date :starting_year
      t.date :ending_year
      t.integer :amount
      t.string :name
      t.boolean :default_charge ,:default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :bus_settings
  end
end
