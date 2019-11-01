Rails.application.routes.draw do
  get 'ourstory/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :biographies
  resources :extras
  resources :galleries do
    resources :images
  end
  resources :posters
  resources :principals
  resources :projects, as: "pods", path: "pods"

  get 'home/index'
  get 'home/mission', as:'mission'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

end
