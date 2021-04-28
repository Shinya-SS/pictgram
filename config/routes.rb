Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  # get 'users/new'
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  resources :users
  resources :topics
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
