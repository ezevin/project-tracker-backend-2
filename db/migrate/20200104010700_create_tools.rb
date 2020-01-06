class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.integer  :user_id
      t.string :label
      t.string :category
      t.float :price
      t.text :description
      t.string :image_url
      t.string :place_purchased

      t.timestamps
    end
  end
end
