class Addquantitytomaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :quantity, :integer, default: 1
  end
end
