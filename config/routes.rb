Rails.application.routes.draw do
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
  get '/salvador_family' => 'people#salvador_family'
end
