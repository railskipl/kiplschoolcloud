class AddColumnRoomIdToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :room_id, :integer
  end

  def self.down
    remove_column :students, :room_id
  end
end
