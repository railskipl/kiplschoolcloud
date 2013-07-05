class AddColumnToRoom < ActiveRecord::Migration
  def self.up
    add_column :rooms, :room_occupied, :integer,:default => 0
  end

  def self.down
    remove_column :rooms, :room_occupied
  end
end
