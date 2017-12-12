class PurchaseMailer < ApplicationMailer
	default from: "programmingbenkyo@gmail.com"

	def purchase_mail(purchase_history)
    @purchase = purchase_history
    mail to:       "programmingbenkyo@gmail.com",
    	 reply_to: @purchase.user.email,
         subject:  "#{@purchase.item.name}の購入リクエストを受け付けました。"
  end
end
