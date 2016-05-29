Rails.application.routes.draw do
  get 'polls/show'

  get 'votes/create'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :votes, only: [:create]
  resources :polls, only: [:show]
end
