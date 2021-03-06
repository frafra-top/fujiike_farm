Rails.application.routes.draw do
  resources :items do
      get 'purchase_histories/new' => 'purchase_histories#new'
      post 'purchase_histories' => 'purchase_histories#create'
      get 'purchase_histories/applied/:id' => 'purchase_histories#applied', as: 'applied'
  end
  resources :purchase_histories, only: [:edit, :update]
  resources :admin
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update] do
    member {
      get 'notification/make_mail' => 'notification#make_mail'  # 個別メール画面
      post 'notification/confirm_mail' => 'notification#confirm_mail'  # 個別メール確認画面
      post 'notification/send_mail' => 'notification#send_mail' # 送信完了画面
    }
  end
  get 'notification/make_mails' => 'notification#make_mails'  # 一括メール画面
  post 'notification/confirm_mails' => 'notification#confirm_mails' # 一括メール確認画面
  post 'notification/send_mails' => 'notification#send_mails' # 送信完了画面
  get 'inquiry' => 'inquiry#new' # お問い合わせ内容作成画面
  post 'inquiry/confirm' => 'inquiry#confirm' # お問い合わせ内容確認画面
  post 'inquiry/sent' => 'inquiry#sent' # お問い合わせ完了画面
  get 'notes' => 'notes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'

end
