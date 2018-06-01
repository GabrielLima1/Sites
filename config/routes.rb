Rails.application.routes.draw do
  root 'home#index'

  devise_for :users
  resources :accounts
  resources :compans
  resources :accessps

  resources :app_products
  resources :apps
  resources :archives
  resources :be_clients
  resources :candidate_works
  resources :cat_ctrl_qualits
  resources :compans
  # resources :contact_us
  resources :cores
  resources :ctrl_qualits
  resources :end_factors
  resources :fac_contacts
  resources :menus
  resources :products
  resources :shipping_emails
  resources :socials
  resources :sub_cat_ctrl_qualits
  resources :sub_menus
  resources :type_archives
  resources :works

  # Para Adcionar um novo recurso use 'resources :nome_recurso_no_plural' sem aspas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
