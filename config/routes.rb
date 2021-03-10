Rails.application.routes.draw do

  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to:'users#create'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/session', to: 'sessions#create', as: 'session'
  delete '/session/', to: 'sessions#destroy'

  
  
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/my-reviews', to: 'reviews#user_reviews', as: 'user_reviews'
  get '/business-listings', to: 'businesses#business_listings', as: 'business_listings'
  resources :businesses, only: [:new, :create, :edit, :update, :destroy]
  resources :reviews, only: [:destroy]

  root 'businesses#index'
  resources :businesses, only: [:show] do
    resources :reviews, only: [:index, :new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
