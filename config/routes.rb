Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "welcome/say_monday" => "welcome#monday"
  get "welcome/tuesday" => "welcome#tueday"
  get "welcome/wednesday" => "welcome#wednesday"
  get "welcome/thursday" => "welcome#thursday"
  get "welcome/friday" => "welcome#friday"
  get "welcome/index" => "welcome#index"

  get "welcome" => "welcome#index"

  get "my_project/this_is_my_project" => "my_project#example_project"
  get "my_project" => "my_project#example_project"
  # ...
  root 'welcome#index'
  # ...
end
