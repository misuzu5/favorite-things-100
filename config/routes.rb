Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root to: 'favorite_things#index'
  resources :favorite_things, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: :show
end
