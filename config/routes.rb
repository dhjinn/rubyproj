Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root 'welcome#index'
  resources :users
  resources :admins
  get 'all', to: 'transactions#index', as: 'all'
  get 'new', to: 'transactions#new', as: 'new'
  post '/create', to: 'transaction#create', as: 'create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
