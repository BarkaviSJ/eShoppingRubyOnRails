class RemoveForeignKeyFromCatalog < ActiveRecord::Migration[6.0]
  def change
  	remove_foreign_key :catalogs, column: :products_id
  end
end
