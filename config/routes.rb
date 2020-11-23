Rails.application.routes.draw do
  root 'events#index'
  resources :users, only: [:new, :create, :show]
  resources :events, only:[:new, :create, :show, :index]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
end
