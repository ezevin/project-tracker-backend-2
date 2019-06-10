class CreateToDoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_lists do |t|
      t.integer :project_id
      t.string :item
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
