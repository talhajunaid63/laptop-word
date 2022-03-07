Rails.application.routes.draw do
root to: 'products#index'
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

 devise_for :users, controllers: { registrations: 'users/registrations'}#, confirmations: 'users/confirmations' }
  #root 'home#homepage'
  get 'dashboard', to: 'home#dashboard'
 end

