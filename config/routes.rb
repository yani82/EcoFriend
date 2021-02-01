Rails.application.routes.draw do

# root 'brands#index', as: 'Home' 

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'

  get '/auth/google_oauth2/callback' => 'sessions#omniauth'


  resources :brands do 
    resources :comments #, only: [:new, :index]
  end  
  resources :comments 
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
