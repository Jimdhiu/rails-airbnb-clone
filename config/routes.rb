Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :boats, only: [:index, :show, :new, :create]
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
