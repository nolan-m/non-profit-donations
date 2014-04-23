NonProfit::Application.routes.draw do
  devise_for :users

  resources :companies do
    resources :charges
  end
  resources :users


  root to: 'welcome#index'

end
