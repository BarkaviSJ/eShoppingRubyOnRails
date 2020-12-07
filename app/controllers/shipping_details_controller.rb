class ShippingDetailsController < ApplicationController
	before_action :authenticate_customer!
	
	def new
		@shipping_detail = ShippingDetail.new
		unless current_customer.store
			redirect_to "/stores/index"
		end 
	end

	def create
		ShippingDetail.create!(shipping_params)
		render "payments/new"
	end

	def shipping_params
		params.require(:shipping_detail).permit(:address, :country, :postal_code, :phone)
	end
end
