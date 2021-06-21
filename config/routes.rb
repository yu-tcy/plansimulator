Rails.application.routes.draw do
  devise_for :users
  root to: 'simulations#index'
  resources :simulations
end
