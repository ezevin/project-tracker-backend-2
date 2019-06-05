class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :label
      t.float :price
      t.text :description
      t.float :quantity
      t.string :image_url
      t.string :place_purchased

      t.timestamps
    end
  end
end
