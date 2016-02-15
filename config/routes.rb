Rails.application.routes.draw do
  root "products#index"

  devise_for :users

  resources :products do
    member do
      post :add_to_cart
    end
  end

  resources :carts do
    collection do
      post :checkout
    end
  end

  resources :orders

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
