Rails.application.routes.draw do
  root to: "pages#landing"
  get "/dashboard", to: "pages#dashboard"
  resources :lessons, only: %i[index show] do
    resources :cards, only: %i[index show]
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
