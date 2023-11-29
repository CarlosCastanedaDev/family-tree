Rails.application.routes.draw do
  resources :recipes
  resources :comments
  resources :photos
  resources :marriages
  resources :people
  resources :filials
  resources :contact_forms, only: [:create]
  devise_for :users, controllers: { registrations: "users/registrations" }

   # Add a custom route for updating user profiles
  #  put 'users' => 'users/registrations#update'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get '/family_tree' => 'people#tree', as: :tree
  get "/birthdays" => "people#birthdays", as: :birthdays
  get '/contact_us' => 'application#contact_us', as: :contact
  get "/family/:id" => "people#family", as: :family
  get "/recipes/my_recipes/:id" => "recipes#my_recipes", as: :my_recipes

  authenticate :user, ->(user) { user.admin? } do
  mount RailsAdmin::Engine, at: "/admin", as: "rails_admin"
  end
end
