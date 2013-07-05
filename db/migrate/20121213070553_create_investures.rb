class CreateInvestures < ActiveRecord::Migration
  def self.up
    create_table :investitures do |t|
      t.string :title
      t.text :summary
      t.text :description

      t.timestamps
    end             
  
  end

  def self.down
    drop_table :investitures
  end
end
