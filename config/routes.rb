Rails.application.routes.draw do
  root to: "pages#landing"
  get "/dashboard", to: "pages#dashboard"
  get "/search", to: "lessons#search"
  get "/developer", to: "pages#developer"
  get "/investing", to: "pages#investing"
  resources :lessons, only: %i[index show search] do
    member do
      get :quiz
    end
    resources :cards, only: %i[index show]
  end
  resources :user_lessons, only: [] do
    member do
      patch :add_points
    end
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
