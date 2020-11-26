Rails.application.routes.draw do
  resources :aspirations, only: :index
end
