Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "relative URL" => "controller#method"

  root "tests#index"
  get "hello" => "tests#hello"
  get "say/hello" => "tests#sayHello"
  get "say/hello/joe" => "tests#joe"
  get "say/hello/michael" => "tests#michael"
  get "times" => "tests#amount"
  get "times/restart" => "tests#restart"
end
