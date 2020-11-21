Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :events, only:[:new, :create, :show, :index]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
end
