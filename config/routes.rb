Rails.application.routes.draw do
  get 'chanels/search'
  resources :chanels
  get 'home/index'
  devise_for :users
  root to: 'home#index'
end
