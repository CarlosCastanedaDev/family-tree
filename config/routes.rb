Rails.application.routes.draw do
  authenticate :user, ->(user) { user.admin? } do
  mount RailsAdmin::Engine, at: "/admin", as: "rails_admin"
  end
  
  resources :recipes
  resources :comments
  resources :photos
  resources :marriages
  resources :people
  resources :filials
  resources :contact_forms, only: [:create]
  devise_for :users, controllers: { registrations: "users/registrations" }

  root "welcome#index"
  get '/family_tree' => 'people#tree', as: :tree
  get "/birthdays" => "people#birthdays", as: :birthdays
  get '/contact_us' => 'contact_forms#contact_us', as: :contact
  get "/family/:id" => "people#family", as: :family
  get "/recipes/my_recipes/:id" => "recipes#my_recipes", as: :my_recipes

end
