Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users

  namespace :api do
    namespace :v1 do

      resources :sessions, only: [:create, :destroy]

    end
  end

end
