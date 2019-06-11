class Setdefaultvaluestoprice < ActiveRecord::Migration[5.2]
  def change
    change_column :materials, :price, :integer, default: 0

  end
end
