class ShippingDetail < ApplicationRecord
	validates :address, presence: true
	validates :phone, presence: true
	validates :postal_code, presence: true
	validates :country, presence: true
	
end