Rails.application.routes.draw do

  get 'bookings/index'

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/show'

  get 'bookings/update'

  get 'bookings/edit'

  get 'bookings/delete'

  get 'venues/index'

  get 'venues/show'

  get 'venues/search'


  devise_for :users
  root to: 'pages#home'

  get '/search', to: 'pages#search'
end
