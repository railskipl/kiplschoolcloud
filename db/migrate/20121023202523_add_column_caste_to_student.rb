class AddColumnCasteToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :caste, :string
  end

  def self.down
    remove_column :students, :caste
  end
end
