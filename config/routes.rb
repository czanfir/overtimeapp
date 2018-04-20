Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :posts
    resources :admin_users

    root to: "users#index"
  end

  resources :posts do
    member do
      get :approve
    end
  end
  resources :audit_logs, except: [:new, :edit, :destory]

  devise_for :users, skip: [:registrations]
  devise_scope :user do
    authenticated :user do
      root 'static#homepage'
    end

    unauthenticated do
      root 'devise/sessions#new'
    end
  end
end
