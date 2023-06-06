Rails.application.routes.draw do
  get 'bookings/new'
  devise_for :users
  root to: "gears#index"
  resources :bookings, except: :new
  resources :gears do
    resources :bookings, only: [:new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
