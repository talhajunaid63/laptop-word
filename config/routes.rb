Rails.application.routes.draw do
 # devise_for :users
 devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#homepage'
  get 'dashboard', to: 'home#dashboard'
end
