Rails.application.routes.draw do
  resources :products
  resources :admins
  resources :users
  root 'users#index'
  get 'users/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'signup'  => 'users#new'

end
