Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/app', to: 'angular_app#index'

  resources :tacos, only: [:index, :new, :create, :show, :destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
