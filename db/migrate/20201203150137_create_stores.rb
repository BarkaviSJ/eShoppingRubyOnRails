class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.integer :no_of_units_available
      t.decimal :latitude
      t.decimal :longitude
      t.references :products, null: false, foreign_key: true

      t.timestamps
    end
  end
end
