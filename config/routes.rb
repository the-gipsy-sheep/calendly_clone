require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users

  authenticated :user do
    root to: "home#dashboard", as: :authenticathed_root
  end

  resources :apointment_types
  resources :apointments, except: [:index, :new]

  get ":apointment_link", to: "users#show", as: :user

  scope '/:apointment_link', as: :user do
    resources :apointments, only: [:index, :new]
  end

  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
