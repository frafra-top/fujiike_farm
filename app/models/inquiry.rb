class Inquiry
  include ActiveModel::Model
 
  attr_accessor :name, :email, :content
 
  validates :name, :presence => {:message => '名前を入力してください'}
  validates :email, :presence => {:message => 'メールアドレスを入力してください'}
  validates :content, :presence => {:message => 'お問い合わせ内容を入力してください'}
end