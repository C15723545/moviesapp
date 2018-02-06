Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :genres
  resources :movies
  
  get '/movies' => 'movies#movie'
  get '/genres' => 'genres#genre'
  get '/users' => 'users#user'
  
  root 'movies#index'
  
end
