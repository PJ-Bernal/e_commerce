Rails.application.routes.draw do
  devise_for :customers
  get 'static_contact_pages/show'
  get 'static_about_pages/show'
  get 'carts/index'
  root 'products#index'

  resources :products, only: [:index, :show]
  get 'products/category/:category_id', to: 'products#category', as: 'category_products'
  get 'on_sale', to: 'products#on_sale', as: 'on_sale_products'
  get 'search', to: 'products#search', as: 'search_products'

  get 'categories/index'

  get '/about', to: 'static_about_pages#show'
  get '/contact', to: 'static_contact_pages#show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
