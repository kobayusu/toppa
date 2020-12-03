Rails.application.routes.draw do
  root to: 'aspirations#index'
  resources :aspirations, only: [:index, :new]
end