Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # DOJO ROUTES
  get "/dojos" => "dojos#index", as: "dojos"
  post "/dojos" => "dojos#create", as: "create_dojo"
  get "/dojos/new" => "dojos#new", as: "new_dojo"
  get "/dojos/:id" => "dojos#show", as: "dojo"
  get "/dojos/:id/edit" => "dojos#edit", as: "edit_dojo"
  patch "/dojos/:id" => "dojos#update", as: "update_dojo"
  delete "/dojos/:id" => "dojos#destroy", as: "destroy_dojo"

  # STUDENT NESTED ROUTES FOR DOJO
  get "/dojos/:dojo_id/students" => "students#index", as: "students"
  post "/dojos/:dojo_id/students" => "students#create", as: "create_student"
  get "/dojos/:dojo_id/students/new" => "students#new", as: "new_student"
  get "/dojos/:dojo_id/students/:id" => "students#show", as: "student"
  get "/dojos/:dojo_id/students/:id/edit" => "students#edit", as: "edit_student"
  patch "/dojos/:dojo_id/students/:id" => "students#update", as: "update_student"
  delete "/dojos/:dojo_id/students/:id" => "students#destroy", as: "destroy_student"

end
