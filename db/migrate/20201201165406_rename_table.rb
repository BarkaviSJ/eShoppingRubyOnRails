class RenameTable < ActiveRecord::Migration[6.0]
  def change
  	rename_table :order_products, :line_items
  end
end
