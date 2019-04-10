Rails.application.routes.draw do
  post '/tickets/', to: 'tickets#create'
  patch '/tickets/:id', to: 'tickets#update'
  delete '/tickets/:id', to: 'tickets#destroy'

  get 'events/upcoming_events'
  post '/events/', to: 'events#create'
  patch '/events/:id', to: 'events#update'
  delete '/events/:id', to: 'events#destroy'

  get 'users/user_with_most_tickets'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  post '/event_venues/', to: 'event_venues#create'
  patch '/event_venues/:id', to: 'event_venues#update'
  delete '/event_venues/:id', to: 'event_venues#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
