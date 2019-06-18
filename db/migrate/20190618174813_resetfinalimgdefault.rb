class Resetfinalimgdefault < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :finished_image, :string, default: 'https://images-na.ssl-images-amazon.com/images/I/51UW1849rJL._SX466_.jpg'
  end
end
