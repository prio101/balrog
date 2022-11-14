Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
  resources :homes, only: [ :index, :new, :create ]
  resources :employments, only: [ :index, :new, :create ]
end
