Rails.application.routes.draw do
  devise_for :users
  root to: 'favorite_things#index'
  resources :favorite_things, only: [:new, :create, :show]
end
