class Setdefaultfinishedpicture < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :finished_image, :string, default: 'https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg'
  end
end
