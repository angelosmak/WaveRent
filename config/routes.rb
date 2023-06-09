Rails.application.routes.draw do
  devise_for :users
  root to: "gears#index"
  resources :users, only: [:show]
  resources :bookings, except: :new
  resources :gears do
    resources :bookings, only: [:new, :create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
