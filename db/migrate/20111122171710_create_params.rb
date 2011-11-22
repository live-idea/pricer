class CreateParams < ActiveRecord::Migration
  def change
    create_table :params do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
