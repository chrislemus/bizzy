Rails.application.routes.draw do
  # resources :reviews
  # resources :businesses
  # resources :users
  get '/signup', to: 'users#new', as: 'new_user'
  
  post '/users', to:'users#create'

  get '/signin', to: 'sessions#new', as: 'signin'
  post '/session', to: 'sessions#create', as: 'session'
  delete '/session/', to: 'sessions#destroy'

  root 'static#home'
  
  get '/auth/:provider/callback', to: 'sessions#omniauth'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
