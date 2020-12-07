class StoresController < ApplicationController

	#skip_before_action :verify_authenticity_token

	def show

		if params[:search]
      @stores = Store.where("store_name ILIKE ?", "%#{params[:search]}%") 
    else
      @stores = Store.all
    end
	end 

	def create
		if current_customer
			current_customer.update(selected_store: (params[:store][:id]))
		end
		redirect_to new_shipping_detail_url
	end 
end 
