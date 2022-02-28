Rails.application.routes.draw do
  resources :products
# <<<<<<< HEAD
  
# =======
# >>>>>>> 3cbbea2528c2edc34e63854ad64f402a3906a9b7
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 # devise_for :users
 # devise_for :users, controllers: { registrations: 'users/registrations' }
 # devise_for :users, controllers: { confirmations: 'confirmations' }
 devise_for :users, controllers: { registrations: 'users/registrations'}#, confirmations: 'users/confirmations' }
  root 'home#homepage'
  get 'dashboard', to: 'home#dashboard'
end
