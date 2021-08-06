Rails.application.routes.draw do
  get 'products/index'
  root 'home#index'
  devise_for :users

  resources :restaurants
  resources :products

  get 'home/index'
end
