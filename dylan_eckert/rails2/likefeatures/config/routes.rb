Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, except: [:index]
  resources :secrets, only: [:index, :create, :destroy]
  resources :likes, only: [:create, :destroy]
  # The priority is based upon order of creation from top to bottom
  # rake routes lets you see all available routes and their names
end
