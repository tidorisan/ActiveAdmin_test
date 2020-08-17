class AaaOpenStatusToStores < ActiveRecord::Migration[5.2]
  def change
  	add_column :stores, :open_status, :integer, default: 1
  end
end
