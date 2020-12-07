class RenameProductTable < ActiveRecord::Migration[6.0]
  def change
  	rename_column :products, :retail_price, :price
  	rename_column :products, :product_type, :category_code
  	rename_column :products, :image, :image_url
  	remove_column :products, :discounted_price, :decimal
  end
end