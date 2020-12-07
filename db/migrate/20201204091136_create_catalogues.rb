class CreateCatalogues < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogues do |t|
      t.string :product_category
      t.string :category_code

      t.timestamps
    end
  end
end
