Rails.application.routes.draw do
  get 'chanels/search'
  resources :chanels
  get 'homes/index'
  devise_for :users
  post 'homes/guest_sign_in', to: 'homes#guest_sign_in'
  root to: 'homes#index'
end
