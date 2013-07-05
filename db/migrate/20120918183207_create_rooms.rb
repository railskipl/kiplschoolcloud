class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :sr_no
      t.string :room_no
      t.integer :student_per_room
      t.integer :availability
      t.float :rent
      t.integer :hostel_id
      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
