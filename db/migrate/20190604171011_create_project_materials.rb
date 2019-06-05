class CreateProjectMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :project_materials do |t|
      t.integer :project_id
      t.integer :material_id

      t.timestamps
    end
  end
end
