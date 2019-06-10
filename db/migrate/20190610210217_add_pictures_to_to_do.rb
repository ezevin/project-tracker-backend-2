class AddPicturesToToDo < ActiveRecord::Migration[5.2]
  def change
    add_column :to_do_lists, :process_pic, :string, default: 'https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg'
  end
end
