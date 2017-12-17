class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :purchase_histories, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :email, presence: true
  validates :contact_name, presence: true
  validates :contact_postal_code, presence: true
  validates :contact_address, presence: true
end
