Rails.application.routes.draw do
  resources :genres, only: [:edit, :update, :show, :create, :new]
  resources :directors, only: [:edit, :update, :show, :create, :new]
  resources :films, only: [:edit, :update, :show, :create, :new]
end
