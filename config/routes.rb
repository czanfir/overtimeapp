Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :posts
    resources :admin_users

    root to: "users#index"
  end

  resources :posts
  devise_for :users, skip: [:registrations]
  devise_scope :user do
    authenticated :user do
      root 'posts#index'
    end

    unauthenticated do
      root 'devise/sessions#new'
    end
  end
end
