class RenameColumnsProductTable < ActiveRecord::Migration[6.0]
  def change
  	rename_column :products, :name, :product_name
  	rename_column :products, :type, :product_type
  	rename_column :products, :category, :product_category
  end
end
