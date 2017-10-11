Rails.application.routes.draw do

  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'

  get '/resources', to: 'pages#resources'


  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  root 'home#index'
  resources :posts
  resources :categories
  resources :pages


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
