
class AddColumnSelectedStoreType < ActiveRecord::Migration[6.0]
  def change
  	add_column :customers, :selected_store, :bigint
  	add_foreign_key :customers, :stores, column: :selected_store
  end
end
