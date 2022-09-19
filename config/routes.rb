Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  mount Resque::Server.new, at: "/resque"
  require 'resque/scheduler'
  require 'resque/scheduler/server'
  root "users#index"
  resources :users
end
