class AddRfidTagIdToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :RFID_tag_id, :integer
  end

  def self.down
     remove_column :students,:RFID_tag_id
  end
end
