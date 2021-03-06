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
      delete :clean
    end
  end

  resources :items, controller: "cart_items"

  resources :orders do
    member do
      get :pay_with_credit_card
      post :pay2go_cc_notify
    end
  end

  namespace :admin do
    resources :products
    resources :orders do
      member do
        post :cancel
        post :ship
        post :deliver
        post :return_good
      end
    end
    resources :users do
      member do
        post :to_admin
        post :to_normal
      end
    end
  end

  namespace :account do
    resources :orders
  end
end
