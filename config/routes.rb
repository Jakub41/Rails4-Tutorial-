Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  root 'home#index'
  resources :posts
  resources :categories

end
