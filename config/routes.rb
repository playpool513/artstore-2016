Rails.application.routes.draw do
  root "products#index"

  devise_for :users

  resources :products

  namespace :admin do
    resources :products
    resources :users do
      member do
        post :to_admin
        post :to_normal
      end
    end
  end
end
