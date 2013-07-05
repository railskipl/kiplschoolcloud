class CreateSchoolLogos < ActiveRecord::Migration
  def self.up
    create_table :school_logos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :school_logos
  end
end
