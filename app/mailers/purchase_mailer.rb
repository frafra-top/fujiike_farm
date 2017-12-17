class PurchaseMailer < ApplicationMailer
	default from: "ふじいけファームのメールアドレス"

	def purchase_mail(purchase_history)
    @purchase = purchase_history
    mail to:       "ふじいけファームのメールアドレス",
    	 reply_to: @purchase.user.email,
         subject:  "#{@purchase.item.name}の購入リクエストを受け付けました。"
  end
end
