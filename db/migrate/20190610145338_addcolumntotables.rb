class Addcolumntotables < ActiveRecord::Migration[5.2]
  def change
    add_column :user_materials, :quantity, :integer
    add_column :project_materials, :quantity, :integer
  end
end
