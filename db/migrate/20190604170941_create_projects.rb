class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.date :start_date
      t.date :due_date
      t.float :budget
      t.boolean :finished, default: false
      t.text :details
      t.string :finished_image

      t.timestamps
    end
  end
end
