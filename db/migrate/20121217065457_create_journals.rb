class CreateJournals < ActiveRecord::Migration
  def self.up
    create_table :journals do |t|
      t.string :title
      t.text :summary
      t.integer :author_id

      t.timestamps
    end
  end

  def self.down
    drop_table :journals
  end
end
