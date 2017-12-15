Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'

  # SESSION ROUTES
  post "/sessions" => "sessions#create", as: "login"
  delete "/session/:id" => "sessions#destroy", as: "logout"
  # ATTENDEE ROUTES
  post "/attendees" => "attendees#create", as: "attend"
  delete "/attendee/:id" => "attendees#destroy", as: "cancel"
  # USER ROUTES
  post "/users" => "users#create", as: "register"
  get "/users/:id/edit" => "users#edit", as: "edit_user"
  patch "/users/:id" => "users#update", as: "update_user"
  delete "/user/:id" => "users#destroy", as: "destroy_user"

  # EVENT ROUTES
  get "/events" => "events#index", as: "events"
  post "/events" => "events#create", as: "create_event"
  get "/events/new" => "events#new", as: "new_event"
  get "/events/:id" => "events#show", as: "event"
  get "/events/:id/edit" => "events#edit", as: "edit_event"
  patch "/events/:id" => "events#update", as: "update_event"
  delete "/events/:id" => "events#destroy", as: "destroy_event"
end
