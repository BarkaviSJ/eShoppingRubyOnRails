class AddColumnsToProductsTable < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :category, :string
  	add_column :products, :type, :string
  	add_column :products, :image, :string
  	add_column :products, :rating, :decimal
  	rename_column :products, :price, :retail_price
  	add_column :products, :discounted_price, :decimal
  	add_column :products, :brand, :string
  end
end
