Rails.application.routes.draw do
  resources :lessons, only: %i[index show] do
    resources :cards, only: %i[index show]
  end

  get '/dashboard', to: 'pages#dashboard'
  get '/landing', to: 'pages#landing'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
