Rails.application.routes.draw do
  get 'google_login_api/callback'
  post '/google_login_api/callback', to: 'google_login_api#callback'

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  
  root to: 'favorite_things#index'
  resources :favorite_things, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create 
    collection do
      get 'all'
      get 'search'
    end
  end
  resources :users, only: :show
end
