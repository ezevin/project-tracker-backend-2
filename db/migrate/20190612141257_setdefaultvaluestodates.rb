class Setdefaultvaluestodates < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :start_date, :date, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
