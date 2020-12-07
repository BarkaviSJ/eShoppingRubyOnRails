class AddCatalogueAsForeignKey < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :catalogue_id, :integer
  	add_foreign_key :products, :catalogues
  end
end