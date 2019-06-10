class Changecolumnsforuserandmaterials < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :profile_picture, :string, default: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'
    change_column :materials, :image_url, :string, default: 'https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg'
  end
end
