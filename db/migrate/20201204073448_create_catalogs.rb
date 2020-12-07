class CreateCatalogs < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogs do |t|
      t.string :product_category
      t.string :category_code
      t.references :products, null: false, foreign_key: true

      t.timestamps
    end
  end
end
