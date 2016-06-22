Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :users
  root 'products#index'
  get 'users/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  post 'logout'  => 'sessions#destroy'
  get 'signup'  => 'users#new'
  get 'cart' => 'cart#index'

end
