Rails.application.routes.draw do
  get    '/artists'           => 'artists#index'
  get    '/artists/new'       => 'artists#new'
  get    '/artists/:id'       => 'artists#show'
  post   '/artists'           => 'artists#create'
  get    '/artists/:id/edit'  => 'artists#edit'
  put    '/artists/:id'       => 'artists#update'
  delete '/artists/:id'       => 'artists#destroy'
end
