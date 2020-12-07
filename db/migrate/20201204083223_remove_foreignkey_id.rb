class RemoveForeignkeyId < ActiveRecord::Migration[6.0]
  def change
  	rename_column  :catalogs, :products_id, :product_id 
  end
end
