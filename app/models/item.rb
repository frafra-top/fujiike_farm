class Item < ApplicationRecord
	has_many :purchase_histories, dependent: :destroy
	has_many :images, dependent: :destroy
	
	accepts_attachments_for :images, attachment: :file

	validates :name, presence: true
	validates :price, presence: true
	validates :content, presence: true
end
