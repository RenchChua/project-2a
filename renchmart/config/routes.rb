Rails.application.routes.draw do

  root 'static_pages#home'

  # dynamic routes
  get '/users', to: 'users#index'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  #RESTful routes
  resources :users


end
