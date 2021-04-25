Rails.application.routes.draw do
  get 'users/new'
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  resource :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
