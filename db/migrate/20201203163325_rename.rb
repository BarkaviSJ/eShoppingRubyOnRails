class Rename < ActiveRecord::Migration[6.0]
  def change
  	rename_column :stores, :no_of_units_available, :units_available
  end
end
