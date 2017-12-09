class PurchaseMailer < ApplicationMailer
	default from: "藤池ファームのメールアドレス"

	def purchase_mail(purchase_history)
    @purchase = purchase_history
    mail to:       "藤池ファームのメールアドレス",
    	 reply_to: @purchase.user.email,
         subject:  "#{@purchase.item.name}の購入リクエストを受け付けました。"
  end
end
