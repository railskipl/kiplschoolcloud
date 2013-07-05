class CreateStudentStatuses < ActiveRecord::Migration
  def self.up
    create_table :student_statuses do |t|
      t.integer :student_id
      t.integer :RFID_tag_id
      t.integer :RFID_reader_id
      t.float :latitude
      t.float :longitude
      t.float :altitude
      t.date  :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :student_statuses
  end
end
