class CreateResearches < ActiveRecord::Migration[5.2]
  def change
    create_table :researches do |t|
      t.integer :project_id
      t.string :image
      
      t.timestamps
    end
  end
end
