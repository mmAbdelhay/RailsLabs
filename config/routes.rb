Rails.application.routes.draw do

  devise_for :users
  # root to: "home#index"
  root to: 'welcome#index'
  get 'welcome/index'

  resources :articles_api do
    resources :comments
  end

  resources :articles do
    resources :comments
  end

  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
