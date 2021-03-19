Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :collections, :plants, :users
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
 



end
