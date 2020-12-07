class ChangeColumnNameShippingDetails < ActiveRecord::Migration[6.0]
  def change
  	change_column :shipping_details, :phone, :string
  end
end
