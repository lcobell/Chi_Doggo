Rails.application.routes.draw do
  root 'dogs#index'

 

  

  devise_for :users
  resources :dogs, shallow: true
  resources :messages
  resources :users
  # only: :show 
  resources :walks
  
  # get "/users/:id" => "users#show", as: :user
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
