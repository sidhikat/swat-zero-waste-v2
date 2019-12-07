
Rails.application.routes.draw do root 'home#index'
  get 'home/index'
  get 'home/go_to_index'
  get 'contact/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :home
  resources :biographies
  resources :extras
  resources :galleries do
    resources :images
  end
  resources :posters
  resources :principals
  resources :projects, as: "pods", path: "pods"
  resources :ourstory



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
