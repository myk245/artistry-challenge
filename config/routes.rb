Rails.application.routes.draw do
  resources :artists
  # get '/artists', to: 'artists#index', as: 'artists'
  # get '/artists/new', to: 'artists#new', as: 'new_artist'
  # post '/artists', to: 'artists#create'
  # get '/artists/:id/edit' to: 'artists#edit', as: 'edit_artist'
  # patch '/artists/:id', to: 'artists#update'
  # delete '/artists/:id', to: 'artists#destroy', as: 'delete_artist'
  resources :songs
  resources :instruments
end
