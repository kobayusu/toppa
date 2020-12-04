Rails.application.routes.draw do
  devise_for :users
  root to: 'aspirations#index'
  resources :aspirations, only: [:index, :new, :create]
end