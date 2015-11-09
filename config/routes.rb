Rails.application.routes.draw do
  get    '/artists'           => 'artists#index'
  get    '/artists/new'       => 'artists#new'
  get    '/artists/:id'       => 'artists#show'
  post   '/artists'           => 'artists#create'
  get    '/artists/:id/edit'  => 'artists#edit'
  patch  '/artists/:id'       => 'artists#update'
  delete '/artists/:id'       => 'artists#destroy'

  # root route
  root "artists#index"
end
