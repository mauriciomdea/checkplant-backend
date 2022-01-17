Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # /users
  resources :users

  # /annotations
  resources :annotations, only: [:index]

  namespace :api do
    namespace :v1 do

      # POST /api/v1/sessions
      # curl -d "email=&password=" -X POST http://127.0.0.1:3000/api/v1/sessions
      resources :sessions, only: [:create]

      # POST /api/v1/annotations
      # curl -d "user_id=&text=&latitude=&longitude=" -X POST http://127.0.0.1:3000/api/v1/annotations
      resources :annotations, only: [:create]

    end
  end

end
