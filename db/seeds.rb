require "csv"

#abort if Rails.env.production? # to avoid deleting the production data

ActiveRecord::Base.connection.disable_referential_integrity do
	Customer.delete_all
	Store.delete_all
	Order.delete_all
	Product.delete_all
end

#create some customers
200.times do |i|
	Customer.create!(
		name: Faker::Name.name, 
		email: Faker::Internet.email, 
		password: Faker::Internet.password
	)
end 

#create new products - product_name,product_category,category_code,price,image_url,brand,description, rating
products = File.read("lib/assets/shopping/products.csv").lines 
products.shift

products.each do |product|  
  begin
       product_name, product_category, category_code, price, image_url, brand, description, rating = CSV.parse(product)[0]; Product.create!( product_name: product_name, product_category: product_category, category_code: category_code, price: price, image_url: image_url, brand: brand,  description: description, rating: rating )
  rescue
    p "Invalid record"
  end
end
Product.where(product_category: nil).destroy_all
puts "Added #{Product.count} products to the database."

# create new store
stores = File.read("lib/assets/shopping/stores.csv").lines 
stores.shift # removing the headers from the csv file
stores.each { |store| store_name, units_available, longitude, latitude = store.split(","); Store.create!( store_name: store_name, units_available: units_available, longitude: longitude, latitude: latitude,  product_id: Product.all.sample.id) }

#create some orders
200.times do |i|
	Order.create!(
		status: [ "Shipped", "Delivered", "Pending", "Ready for Shipment" ].sample, 
		price: Faker::Commerce.price(range: 0..200.0, as_string: true),
		customer: Customer.all.sample #to get the customer object
	)
end 