Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	delete 'logout' => :destroy
  end
  
  
  resources :genres
  resources :movies
  resources :users
  

  get '/movies' => 'movies#movie'
  get '/genres' => 'genres#genre'
  get '/users' => 'users#user'
  
  
  root 'movies#index'
  
end
