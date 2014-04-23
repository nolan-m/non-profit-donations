NonProfit::Application.routes.draw do
  devise_for :users

  resources :companies
  resources :users

  root to: 'welcome#index'

end
