Rails.application.routes.draw do
  root 'home#index'
  
  resources :genres, only: [:edit, :update, :show, :create, :new]
  resources :directors, only: [:edit, :update, :show, :create, :new]
  resources :films, only: [:edit, :update, :show, :create, :new]
end
