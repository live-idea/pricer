class CreateGroupTags < ActiveRecord::Migration
  def change
    create_table :group_tags do |t|
      t.string :name
      t.timestamps
    end
  end
end
