Rails.application.routes.draw do
  root 'dogs#index'

  get "/users/:id" => "users#show", as: :user

  

  devise_for :users
  resources :dogs
  resources :messages
  resources :users, only: [:show]
  resources :walks
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
