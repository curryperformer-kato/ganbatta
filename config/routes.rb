Rails.application.routes.draw do

  get 'notifications/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :topics do
    resources :comments
  end

  resources :conversations do
    resources :messages
  end

  resources :users, only: [:index, :show]
  resources :relationships, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  root 'top#index'
end