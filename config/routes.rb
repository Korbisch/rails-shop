Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  root 'catalog#index', as: 'catalog_index'
  resources :products
end
