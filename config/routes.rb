Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: :show
end
