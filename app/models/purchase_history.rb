class PurchaseHistory < ApplicationRecord
  belongs_to :user
  belongs_to :item

  enum status: {
    applied: 0,
    transfered: 1,
    deliveried: 2,
    failed_payment: 3,
    canceled: 4
  }
end
