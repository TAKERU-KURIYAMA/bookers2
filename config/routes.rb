Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get 'homes/about' =>'homes#about', as:'about'
  get 'homes/top'
  resources :books, only: [:index, :show, :create, :destroy, :edit, :update]
  resources :users, only: [:index, :edit, :show]
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end