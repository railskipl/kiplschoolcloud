class CreateReaders < ActiveRecord::Migration
  def self.up
    create_table :readers do |t|
      t.string :reader_name
      t.string :reader_tag
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :readers
  end
end
