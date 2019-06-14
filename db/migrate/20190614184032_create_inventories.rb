class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
        t.integer :project_id
        t.string :label
        t.float :price, default: 1
        t.text :description
        t.string :image_url, default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"
        t.string :place_purchased

      t.timestamps
    end
  end
end
