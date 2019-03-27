Rails.application.routes.draw do
  resources :biographies
  resources :extras
  resources :galleries do
    resources :images
  end
  resources :posters
  resources :principals
  resources :projects

  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'


end
