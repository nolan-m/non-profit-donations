NonProfit::Application.routes.draw do
  devise_for :users

  resources :companies
  resources :users
  resources :accounts
  resources :charges

  root to: 'welcome#index'

end
