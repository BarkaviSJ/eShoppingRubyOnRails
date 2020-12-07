class CreateShippingDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_details do |t|
      t.text :address
      t.string :country
      t.string :postal_code
      t.integer :phone
    end
  end
end
