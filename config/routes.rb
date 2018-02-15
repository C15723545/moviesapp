Rails.application.routes.draw do

  resources :movies do
	resources :comments
  end
  
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
  
  get 'pages/home'
  get 'about' => 'pages#about', as: 'about'
  get '/movies' => 'movies#movie'
  get '/genres' => 'genres#genre'
  get '/users' => 'users#user'
    
  root 'pages#home'
  
end
