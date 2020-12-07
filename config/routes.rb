Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers #add the routes for registration, login and logout - rails generate devise Customer
  resources :orders
  resources :customers
  resources :products, only: [:show, :index]
  resource :shopping_cart
  resource :stores
  resource :shipping_detail
  resource :charts
  root "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
