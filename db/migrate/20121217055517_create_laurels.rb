class CreateLaurels < ActiveRecord::Migration
  def self.up
    create_table :laurels do |t|
      t.string :title
      t.text :summary
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :laurels
  end
end
