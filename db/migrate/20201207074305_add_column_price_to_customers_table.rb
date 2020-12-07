class AddColumnPriceToCustomersTable < ActiveRecord::Migration[6.0]
  def change
  	add_column :customers, :price, :string
  end
end
