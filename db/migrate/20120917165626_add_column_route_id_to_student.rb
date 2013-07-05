class AddColumnRouteIdToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :route_id, :integer
  end

  def self.down
    remove_column :students, :route_id
  end
end
