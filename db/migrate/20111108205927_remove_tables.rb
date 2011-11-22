class RemoveTables < ActiveRecord::Migration
  def up
    drop_table :group_tags
    drop_table :categorygroups
  end

  def down
  end
end
