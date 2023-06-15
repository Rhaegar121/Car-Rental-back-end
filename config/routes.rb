Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  post '/users/login', to: 'users#login'
  match '/users/login', to: 'users#login', via: [:options]
  post '/users/signup', to: 'users#signup'
  match '/users/signup', to: 'users#signup', via: [:options]
  delete '/users/logout', to: 'users#logout'

  resources :users, only: [] do
    resources :cars, only: %i[index show new create destroy]
    resources :favourites, only: %i[index create destroy]
  end
end
