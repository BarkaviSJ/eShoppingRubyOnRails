class ShoppingCartsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def create
		@product_id= params[:id] 
		#to capture session details - hidden values
		@shopping_cart = Product.where(id: session[:shopping_cart])

		if session.key?(:shopping_cart)              
			session[:shopping_cart] << params[:id]
		else
			session[:shopping_cart] = []
			session[:shopping_cart] << params[:id]
		end 
		render :show
	end

	def show
		@shopping_cart = Product.where(id: session[:shopping_cart])
	end 

	def destroy
		session[:shopping_cart].delete(params[:id])
		redirect_to action: "show"
	end

end 
