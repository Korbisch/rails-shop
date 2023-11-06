Rails.application.routes.draw do
  root 'catalog#index', as: 'catalog_index'
  resources :products
end
