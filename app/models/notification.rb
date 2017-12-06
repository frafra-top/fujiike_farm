class Notification
  include ActiveModel::Model

  attr_accessor :email, :subject, :message

  validates :email, :presence => {:message => 'メールアドレスを入力してください'}, on: :sendone
  validates :subject, :presence => {:message => '題名を入力してください'}
  validates :message, :presence => {:message => 'メッセージを入力してください'}
end
