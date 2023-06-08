Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: %i[index show]
  resources :favourites, only: %i[index create destroy]
  resources :cars, only: %i[index show new create destroy]
end
