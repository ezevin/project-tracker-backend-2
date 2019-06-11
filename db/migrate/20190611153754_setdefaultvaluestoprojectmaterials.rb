class Setdefaultvaluestoprojectmaterials < ActiveRecord::Migration[5.2]
  def change
    change_column :project_materials, :quantity, :integer, default: 1
  end
end
