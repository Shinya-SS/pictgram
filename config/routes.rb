Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  # get 'users/new'
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  resources :users
  resources :topics do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#delete'
  end
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create' 
  post '/favorites/delete', to: 'favorites#delete'
  
  post '/comments', to: 'comments#create'
  get '/comment/show', to: 'comments#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
