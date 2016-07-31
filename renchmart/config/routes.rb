Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'

  # dynamic routes
  get '/users', to: 'users#index'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/users/:id/edit', to: 'users#edit'
  patch '/users/:id/edit', to: 'users#update'
  get '/categories', to: 'categories#index'
  get '/categories/new', to: 'categories#new'
  post '/categories/new', to: 'categories#create'
  get '/categories/:id', to: 'categories#show'
  get '/categories/:id/edit', to: 'categories#edit'
  patch '/categories/:id/edit', to: 'categories#update'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #RESTful routes
  resources :users
  resources :categories

end
