class CreateHostels < ActiveRecord::Migration
  def self.up
    create_table :hostels do |t|
      t.string :name
      t.string :hostel_type
      t.text :information

      t.timestamps
    end
  end

  def self.down
    drop_table :hostels
  end
end
