Rails.application.routes.draw do


  # resources :reviews, only: [ :index, :new, :create, :edit, :update, :delete ]

  resources :bookings, only: [ :index, :show, :update, :edit, :delete ] do
    resources :reviews, only: [ :new, :create]
end

  get '/search', to: 'pages#search'

  get "user/dashboard", to: "users#dashboard"


  resources :venues, only: [ :index, :show, :search, :new, :create, :edit, :update ] do
    resources :bookings, only: [ :create ]
  end

  devise_for :users

  root to: 'pages#home'

end
