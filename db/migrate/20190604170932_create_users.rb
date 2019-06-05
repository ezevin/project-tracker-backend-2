class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :profile_picture
      t.integer :age
      t.text :about_me

      t.timestamps
    end
  end
end
