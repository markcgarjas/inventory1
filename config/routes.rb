Rails.application.routes.draw do
  resources :inventory_systems

  # get "inventory_systems/home" => "inventory_systems#home"
  get "inventory_systems/home" => "inventory_systems#home"
  root 'inventory_systems#index'
  # get "inventory_systems/next" => "inventory_systems#next"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#home"
  # get "welcome/say_monday" => "welcome#monday"
  # get "welcome/tuesday" => "welcome#tueday"
  # get "welcome/wednesday" => "welcome#wednesday"
  # get "welcome/thursday" => "welcome#thursday"
  # get "welcome/friday" => "welcome#friday"
  # get "welcome/home" => "welcome#home"

  # get "posts/new" => "posts#new"
  # get "posts/home" => "posts#home"
  resources :posts

  # ...
  # root 'welcome#home'
  # ...
end
