Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :users
  root 'sessions#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  post 'logout'  => 'sessions#destroy'
  get 'signup'  => 'users#new'
  resources :orders
  resources :order_items, only: [:create, :update, :destroy]
  resource :cart
  get 'cart/:product_id/add_to_cart' => 'carts#add_to_cart' , :as => 'add_to_cart'
  get 'cart/clear_cart' => 'carts#clear_cart', :as => 'clear_cart'

end
