Rails.application.routes.draw do
  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/show'

  get 'bookings/update'

  get 'bookings/edit'

  get 'bookings/delete'

  get 'venues/index'

  get 'venues/show'

  get 'venues/search'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
