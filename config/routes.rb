Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions:           "admins/sessions",
    passwords:          "admins/passwords",
    registrations:      "admins/registrations",
    confirmations:      "admins/confirmations",
  }
  devise_for :investors, controllers: {
    sessions:           "investors/sessions",
    passwords:          "investors/passwords",
    registrations:      "investors/registrations",
    confirmations:      "investors/confirmations",
  }

  devise_for :users, controllers: {
    sessions:           "users/sessions",
    passwords:          "users/passwords",
    registrations:      "users/registrations",
    confirmations:      "users/confirmations",
  }

  root 'pages#home'

  get 'pages/about'

  resources :posts
  
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
