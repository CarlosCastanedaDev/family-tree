Rails.application.routes.draw do
  resources :marriages
  resources :people
  resources :filials
  devise_for :users, controllers: { registrations: "users/registrations" }

   # Add a custom route for updating user profiles
  #  put 'users' => 'users/registrations#update'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get '/family_tree' => 'people#tree', as: :tree
end
