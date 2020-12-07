class RenameForeignKeyProducts < ActiveRecord::Migration[6.0]
  def change
  	rename_column :stores, :products_id, :product_id
  end
end
