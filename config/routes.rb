Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root 'welcome#index'
  get '/users' => 'users#show', as: :user_root 

  namespace :user do
  	root 'users#show' 
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
