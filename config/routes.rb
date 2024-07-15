Rails.application.routes.draw do
  root 'characters#index'
  # resources :lists
  resources :characters

  namespace :api do
    resources :characters, only: [:index]
  end
end
