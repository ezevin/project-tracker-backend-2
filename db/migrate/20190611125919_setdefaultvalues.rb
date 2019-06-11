class Setdefaultvalues < ActiveRecord::Migration[5.2]
  def change
    change_column :user_materials, :quantity, :integer, default: 0
    change_column :project_materials, :quantity, :integer, default: 0
  end
end
