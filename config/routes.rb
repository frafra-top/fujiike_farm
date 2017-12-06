Rails.application.routes.draw do
  resources :items
  resources :admin
  devise_for :users
  resources :users, only: [:index, :show] do
    member {
      get 'notification/makeone' => 'notification#makeone'  # 個別メール画面
      post 'notification/sendone' => 'notification#sendone' # 送信完了画面
    }
  end
  get 'notification/makeall' => 'notification#makeall'  # 一括メール画面
  post 'notification/sendall' => 'notification#sendall' # 送信完了画面
  resources :purchase_histories, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'

end
