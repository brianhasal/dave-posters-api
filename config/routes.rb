Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/posters" => "posters#index"
  post "/posters" => "posters#create"
  get "/posters/:id" => "posters#show"
  patch "/posters/:id" => "posters#update"
  delete "/posters/:id" => "posters#destroy"
end
