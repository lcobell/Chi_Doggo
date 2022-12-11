Rails.application.routes.draw do
  root 'dogs#index'
  devise_for :users
  resources :dogs
  resources :messages
  resources :walks
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
