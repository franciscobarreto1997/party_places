Rails.application.routes.draw do


  resources :reviews, only: [ :index, :new, :create, :edit, :update, :delete ]

  resources :bookings, only: [ :index, :new, :create, :show, :update, :edit, :delete ]

  resources :venues, only: [ :index, :show, :search ]

  get "user/dashboard", to: "users#dashboard"

  devise_for :users
  root to: 'pages#home'

  get '/search', to: 'pages#search'
end
