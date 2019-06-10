class Removecolumnfrommaterials < ActiveRecord::Migration[5.2]
  def change
    remove_column :materials, :quantity, :string
  end
end
