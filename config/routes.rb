Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
end
