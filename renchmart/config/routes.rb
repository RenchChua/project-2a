Rails.application.routes.draw do

  root 'static_pages#home'

  #RESTful routes
  resources :users


end
