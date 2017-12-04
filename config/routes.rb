Rails.application.routes.draw do
  resources :items
  resources :admin
  devise_for :users
  resources :users, only: [:index, :show]
  resources :purchase_histories, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'

end
