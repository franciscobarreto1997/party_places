Rails.application.routes.draw do


  resources :reviews, only: [ :index, :new, :create, :edit, :update, :delete ]

  resources :bookings, only: [ :index, :new, :create, :show, :update, :edit, :delete ]

  get '/search', to: 'pages#search'

  resources :venues, only: [ :index, :show, :search ]

  devise_for :users

  root to: 'pages#home'

end
