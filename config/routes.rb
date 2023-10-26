Rails.application.routes.draw do
  resources :marriages
  resources :people
  resources :filials
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get '/family_tree' => 'people#tree', as: :tree
end
