class CreateCategorygroups < ActiveRecord::Migration
  def change
    create_table :categorygroups do |t|
      t.string :name
      t.timestamps
    end
  end
end
