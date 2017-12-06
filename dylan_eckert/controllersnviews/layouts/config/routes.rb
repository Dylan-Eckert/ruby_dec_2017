Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users' => 'users#index', as: 'users'
  post '/users' => 'users#create', as: 'create_user'
  get '/posts' => 'posts#index', as: 'posts'
  post '/posts' => 'posts#create', as: 'create_post'
end
