Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get 'home/about' =>'homes#about', as:'about'
  get 'home/top'
  resources :books, only: [:index, :show, :create, :destroy, :edit, :update]
  resources :users, only: [:index, :edit, :show, :update]
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
