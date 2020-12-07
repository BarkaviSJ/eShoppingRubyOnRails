class AddColumnPriceToOrdersTable < ActiveRecord::Migration[6.0]
  def change
  	remove_column :customers, :price, :string
  	add_column :orders, :price, :string
  end
end
