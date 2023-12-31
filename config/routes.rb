Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users
  resources :products

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'catalog#index', as: 'catalog_index'
  end
end
