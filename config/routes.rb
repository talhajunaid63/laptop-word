Rails.application.routes.draw do
 # devise_for :users
 # devise_for :users, controllers: { registrations: 'users/registrations' }
 # devise_for :users, controllers: { confirmations: 'confirmations' }
 devise_for :users, controllers: { registrations: 'users/registrations'}#, confirmations: 'users/confirmations' }
  root 'home#homepage'
  get 'dashboard', to: 'home#dashboard'
end
