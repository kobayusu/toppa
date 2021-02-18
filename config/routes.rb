Rails.application.routes.draw do
  devise_for :users
  root to: 'aspirations#index'
  resources :aspirations
  resources :records
end