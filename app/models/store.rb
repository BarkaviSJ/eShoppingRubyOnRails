class Store < ApplicationRecord
  	belongs_to :product
  	has_many :customers, foreign_key: :selected_store
end
